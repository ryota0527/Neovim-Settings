-- terminal opening command
vim.api.nvim_create_user_command("T", function()
    vim.cmd("botright vsplit")
    vim.cmd("terminal")
    vim.api.nvim_win_set_width(
        vim.api.nvim_get_current_win(),
        55
    )
end, {})
