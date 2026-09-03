-- plugins
return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
    },

    { 
        'nvim-mini/mini.icons',
    },

    {
        "benlubas/molten-nvim",
    },

    {
        "lervag/vimtex",
    },

    {
        "stevearc/oil.nvim",
    },

    {
        "romgrk/barbar.nvim",
    },

    {
        "nvim-lualine/lualine.nvim",
    },

    {
        "kdheepak/lazygit.nvim",
    },

    {
        "neovim/nvim-lspconfig",
    },

    {
        "mason-org/mason.nvim",
    },

    {
        "mason-org/mason-lspconfig.nvim",
    },

    require("plugins.oil"),
    require("plugins.lualine"),
    require("plugins.lazygit"),
    require("plugins.barbar"),
    require("plugins.lspconfig"),
    require("plugins.mason"),
    require("plugins.vimtex"),

}
