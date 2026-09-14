return {
    "mfussenegger/nvim-dap-python",
    lazy = false,
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
        require("dap-python").setup("~/miniforge3/envs/myenv/bin/python3") -- Change here to the path to python executable in your env
    end,
}
