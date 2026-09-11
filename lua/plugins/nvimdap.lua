return {
    "mfussenegger/nvim-dap",
    lazy = false,
    keys = {
        {
            "<leader>b",
            function()
                require("dap").toggle_breakpoint()
            end,
            desc = "Toggle breakpoint",
        },

        {
            "<leader>d",
            function()
                require("dap").continue()
            end,
            desc = "Launch debug sessions",
        },

    },
}
