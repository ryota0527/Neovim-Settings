return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",

        lazy = false,
        build = ":TSUpdate",

        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "python",
                    "lua",
                    "bash",
                    "fortran",
                    "markdown",
                },

                highlight = {
                    enable = true,
                },

                indent = {
                    enable = true,
                },
            })

            vim.opt.foldmethod = "expr"
            vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
            vim.opt.foldlevel = 99
            vim.opt.foldlevelstart = 99

            vim.opt.foldcolumn = "1"

            vim.opt.fillchars = {
                foldopen = "",
                foldclose = "",
                foldsep = " ",
            }
        end,
    },
}
