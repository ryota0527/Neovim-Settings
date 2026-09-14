return {
    "rcarriga/nvim-dap-ui",
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
    config = function()
        local dap, dapui = require("dap"), require("dapui")

        dapui.setup({
            layouts = {
                {
                    elements = {
                        { id = "scopes", size = 0.4 },
                        { id = "breakpoints", size = 0.2 },
                        { id = "stacks", size = 0.2 },
                        { id = "watches", size = 0.2 },
                    },
                    size = 35,
                    position = "right",
                },
                {
                    elements = {
                        { id = "repl", size = 0.5 },
                        { id = "console", size = 0.5 },
                    },
                    size = 10,
                    position = "bottom",
                },
            },

            keys = {
                {
                    "<leader>du",
                    function()
                        dapui.toggle()
                    end,
                },
                {
                    "<leader>de",
                    function()
                        dapui.eval()
                    end,
                },
            },
        })

        dap.listeners.after.event_initialized.dapui_config = function()
            dapui.open()
        end
    end,
}
