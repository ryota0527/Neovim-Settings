return {
    {

        "nvim-treesitter/nvim-treesitter",

        lazy = false,
        config = function()
            require("nvim-treesitter").setup({
                ensure_installed = {
                    "python",
                    "lua",
                    "fortran",
                    "bash",
                    "latex",
                    "vim",
                    "c",
                    "markdown"
                },

                highlight = {
                    enable = true,
                },

                indent = {
                    enable = true,
                },
            })

            vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
            vim.wo[0][0].foldmethod = 'expr'
            vim.opt.foldlevel = 99
            vim.opt.foldlevelstart = 99
            vim.opt.foldcolumn = "1"

            vim.opt.fillchars = {
                foldopen = "",
                foldclose = "",
                foldsep = " ",
            }

            vim.api.nvim_set_hl(0, "FoldColumn", {
                fg = "#565f89",
            })
        end,
    }
}
