-- plugins
require("lazy").setup({
    {"folke/tokyonight.nvim"},

    {
        "lervag/vimtex",
        lazy = false,
    }

})

-- activate vimtex
vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_view_method = "zathura"


