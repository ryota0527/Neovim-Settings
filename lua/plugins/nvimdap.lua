return {
    "mfussenegger/nvim-dap",
    lazy = false,
    config = function()
        local dap = require("dap")

        dap.adapters.gdb = {
            type = "executable",
            command = "gdb",
            args = { "-i", "dap" },
        }

        dap.configurations.fortran = {
            {
                name = "Launch Fortran",
                type = "gdb",
                request = "launch",
                program = function()
                    return vim.fn.input(
                        "Path to executable: ",
                        vim.fn.getcwd() .. "/",
                        "file"
                    )
                end,
                cwd = "${workspaceFolder}",
                stopAtBeginningOfMainSubprogram = false,
            },
        }

    end,

    -- keymappings
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

        {
            "<leader>du",
            function()
                require("dapui").toggle()
            end,
        },

        {
            "<leader>de",
            function()
                require("dapui").eval()
            end,
        },
    },
}
