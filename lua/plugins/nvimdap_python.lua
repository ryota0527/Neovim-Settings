return {
    "mfussenegger/nvim-dap-python",
    lazy = false,
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
        require("dap-python").setup("python")
    end,
}
