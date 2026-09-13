return {
    "mfussenegger/nvim-dap",
    lazy = false,
    keys = {
        {
            "<leader>b",
            function()
                require("dap").toggle_breakpoint()
            end,
        },

        {
            "<leader>dd",
            function()
                require("dap").continue()
            end,
        },

        {
            "<leader>dq",
            function()
                require("dap").terminate()
            end,
        },

        {
            "<leader>ds",
            function()
                require("dap").step_over()
            end,
        },

        {
            "<leader>di",
            function()
                require("dap").step_into()
            end,
        },

        {
            "<leader>do",
            function()
                require("dap").step_out()
            end,
        },

        {
            "<leader>B",
            function()
                require("dap").set_breakpoint(
                    vim.fn.input("Breakpoint condition: ")
                )
            end,
        },
    },
}
