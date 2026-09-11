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
        "mason-org/mason.nvim",
    },

    require("plugins.oil"),
    require("plugins.lualine"),
    require("plugins.lazygit"),
    require("plugins.barbar"),
    require("plugins.lspconfig"),
    require("plugins.mason"),
    require("plugins.vimtex"),
    require("plugins.treesitter"),
    require("plugins.nvimdap"),
    require("plugins.nvimdap_python"),

}
