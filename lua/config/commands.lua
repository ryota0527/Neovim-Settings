-- terminal opening command
vim.api.nvim_create_user_command("T", function()
    vim.cmd("botright vsplit")
    vim.cmd("terminal")
end, {})
