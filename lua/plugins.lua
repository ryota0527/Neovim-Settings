-- plugins
return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
    },

    {
        "lervag/vimtex",
        lazy = false,

        init = function()
            -- vimtex setting
            vim.g.vimtex_compiler_method = "latexmk"
            vim.g.vimtex_view_method = "zathura"
            vim.g.vimtex_view_automatic = 1
            vim.g.vimtex_compiler_latexmk = {
                build_dir = "",
                callback = 1,
                continuous = 1,
                executable = "latexmk"
            }
            vim.api.nvim_create_autocmd("FileType", {
                pattern ="tex",
                callback = function()
                    if vim.b.vimtex then
                        vim.cmd("VimtexCompile")
                    end
                end,
            })

            vim.g.vimtex_syntax_enabled = 1
            vim.g.vimtex_indent_enabled = 1
            vim.g.vimtex_view_zathura_sync = 1
            vim.g.vimtex_quickfix_mode = 0
    	end,
        
    },

    { 
        'nvim-mini/mini.icons',
        version = '*' 
    },

    {
        "neovim/nvim-lspconfig"
    },

    {
        "benlubas/molten-nvim",
    },

    {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {},
        -- Optional dependencies
        dependencies = { { "nvim-mini/mini.icons", opts = {} } },
        -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
        -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
        lazy = false,
    },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup({
                options = {
                    theme = "auto",
                    section_separators = "",
                    component_separators = "|",
                },

                sections = {
                    lualine_a = { "mode" },

                    lualine_b = {
                        "branch",
                        "diff",
                        "diagnostics",
                    },

                    lualine_c = {
                        {
                            "filename",
                            path = 1,
                        },
                    },

                    lualine_x = {
                        "encoding",
                        "fileformat",
                        "filetype",
                    },

                    lualine_y = {
                        "progress",
                    },

                    lualine_z = {
                        "location",
                    },
                },
            })

        end,
    },

    {
        "kdheepak/lazygit.nvim",
        lazy = true,
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        -- setting the keybinding for LazyGit with 'keys' is recommended in
        -- order to load the plugin when the command is run for the first time
        keys = {
            { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
        }
    },

    {
        'romgrk/barbar.nvim',
        dependencies = {
          'nvim-mini/mini.icons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,

        keys = {
            {
                '<Tab>',
                '<cmd>BufferNext<CR>',
                desc = 'Next buffer',
            },
            {
                '<S-Tab>',
                '<cmd>BufferPrevious<CR>',
                desc = 'Previous buffer',
            },
        },
    },

}
