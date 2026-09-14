return {
    "mfussenegger/nvim-dap-python",
    lazy = false,
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
        require("dap-python").setup("~/myenv/bin/python3.12")
    end,
}
