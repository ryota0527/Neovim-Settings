return {
    'stevearc/oil.nvim',
    lazy = false,
    ---@module 'oil'
    ---@type oil.SetupOpts

    config = function()
        local oil = require("oil")
        local actions = require("oil.actions")

        local function enter_dir(entry)
            local dir = oil.get_current_dir() .. entry.name
            local oil_win = vim.api.nvim_get_current_win()

            vim.cmd("topleft 25vsplit")
            vim.api.nvim_win_close(oil_win, true)

            local new_oil_win = vim.api.nvim_get_current_win()

            vim.api.nvim_win_set_width(new_oil_win, 25)
            vim.wo[new_oil_win].winfixwidth = true

            oil.open(dir)

            vim.opt_local.number = false
            vim.opt_local.relativenumber = false
        end

        local function get_rightmost_win()
            local rightmost_win = nil
            local max_col = -1

            for _, win in ipairs(vim.api.nvim_list_wins()) do
                local buf = vim.api.nvim_win_get_buf(win)

                if vim.bo[buf].buftype ~= "terminal" then
                    local pos = vim.api.nvim_win_get_position(win)
                    local col = pos[2]

                    if col > max_col then
                        max_col = col
                        rightmost_win = win
                    end
                end
            end

            return rightmost_win
        end

        oil.setup({
            default_file_explorer = true,

            view_options = {
                show_hidden = true,
            },

            keymaps = {
                ["<CR>"] = {
                    function()
                        local entry = oil.get_cursor_entry()

                        if not entry then
                            return
                        end

                        if entry.type == "directory" then
                            enter_dir(entry)

                        else
                            local path = oil.get_current_dir() .. entry.name
                            local right_win = get_rightmost_win()
                            vim.api.nvim_set_current_win(right_win)
                            vim.cmd("belowright vsplit " .. path)
                        end
                    end,
                    mode = "n"
                },

                ["<C-s>"] = {
                    function()
                        local entry = oil.get_cursor_entry()

                        if not entry then
                            return
                        end

                        if entry.type == "directory" then
                            enter_dir(entry)

                        else
                            local path = oil.get_current_dir() .. entry.name
                            local right_win = get_rightmost_win()
                            vim.api.nvim_set_current_win(right_win)
                            vim.cmd("belowright split " .. path)
                        end

                    end,
                    mode = "n"
                },

                ["<leader>p"] = {
                    function()
                        actions.preview.callback()
                    end,
                    mode = "n"
                },

                ["q"] = {
                    function()
                        actions.close.callback()
                    end,
                    mode = "n"
                },

                ["-"] = {
                    function()
                        actions.parent.callback()
                        vim.opt_local.number = false
                        vim.opt_local.relativenumber = false
                    end,
                    mode = "n"
                },
            },
        })

        local oil_group = vim.api.nvim_create_augroup("OpenOilOnStart", {
            clear = true,
        })

        vim.api.nvim_create_autocmd("VimEnter", {
            group = oil_group,
            callback = function()
                if vim.bo.filetype == "oil" then
                    vim.opt_local.number = false
                    vim.opt_local.relativenumber = false
                    return
                end

                local file = vim.fn.argv(0)

                if file == "" then
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
                    vim.api.nvim_win_set_width(oil_win, 25)
                    vim.cmd('setlocal winfixwidth')

                    require("oil").open(dir)
                    vim.opt_local.number = false
                    vim.opt_local.relativenumber = false
                    vim.api.nvim_set_current_win(main_win)
                end)
            end,
        })

        local function fix_oil_width()
            local wins = vim.api.nvim_list_wins()

            if #wins <= 1 then
                return
            end

            for _, win in ipairs(wins) do
                local buf = vim.api.nvim_win_get_buf(win)

                if vim.bo[buf].filetype == "oil" then
                    vim.api.nvim_win_set_width(win, 25)
                    vim.wo[win].winfixwidth = true
                end
            end
        end

        vim.api.nvim_create_autocmd("BufEnter", {
            group = oil_group,
            callback = function()
                if vim.bo.filetype ~= "oil" then
                    vim.schedule(fix_oil_width)
                end
            end,
        })

    end,

    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
}
