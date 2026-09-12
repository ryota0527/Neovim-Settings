return {
    'stevearc/oil.nvim',
    lazy = false,
    ---@module 'oil'
    ---@type oil.SetupOpts

    config = function()
        require("oil").setup({
            default_file_explorer = true,

            view_options = {
                show_hidden = true,
            },

            keymaps = {
                ["<CR>"] = {
                    "actions.select",
                    opts = {
                        vertical = true,
                        close = false,
                    },
                },

                ["<C-s>"] = {
                    "actions.select",
                    opts = {
                        horizontal = true,
                        close = false,
                    },
                },

                ["<C-p>"] = "actions.preview",

                ["<q>"] = "actions.close",
            },
        })

        local oil_group = vim.api.nvim_create_augroup("OpenOilOnStart", {
            clear = true,
        })

        vim.api.nvim_create_autocmd("VimEnter", {
            group = oil_group,
            callback = function()
                local file = vim.fn.argv(0)

                if file == "" or vim.fn.isdirectory(file) == 1 then
                    return
                end

                local dir = vim.fn.fnamemodify(file, ":p:h")
                local main_win = vim.api.nvim_get_current_win()

                vim.schedule(function()
                    if not vim.api.nvim_win_is_valid(main_win) then
                        return
                    end

                    vim.cmd("topleft vsplit")
                    local oil_win = vim.api.nvim_get_current_win()
                    vim.api.nvim_win_set_width(oil_win, 30)
                    require("oil").open(dir)

                    vim.cmd('setlocal winfixwidth')
                    vim.api.nvim_set_current_win(main_win)
                end)
            end,
        })
    end,

    -- Optional dependencies
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
}
