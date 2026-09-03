return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
        build = ":TSUpdate",

        config = function()
            local ts = require("nvim-treesitter")

            ts.setup({
                install_dir = vim.fn.stdpath("data") .. "/site",
            })

            -- Install parsers
            ts.install({
                "python",
                "lua",
                "bash",
                "fortran",
                "latex",
                "markdown",
                "vim",
                "vimdoc",
            })

            -- Enable Treesitter highlighting
            vim.api.nvim_create_autocmd("FileType", {
                callback = function()
                    local ok = pcall(vim.treesitter.start)
                    if not ok then
                        return
                    end
                end,
            })

            -- Folding
            vim.opt.foldmethod = "expr"
            vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
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
