return {
    "lervag/vimtex",
    lazy = false,

    init = function()
        -- vimtex setting
        vim.g.vimtex_compiler_method = "latexmk"
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_view_automatic = 1
        vim.g.vimtex_compiler_latexmk = {
            build_dir = "",
            callback = 1,
            continuous = 1,
            executable = "latexmk"
        }
        vim.api.nvim_create_autocmd("FileType", {
            pattern ="tex",
            callback = function()
                if vim.b.vimtex then
                    vim.cmd("VimtexCompile")
                end
            end,
        })

        vim.g.vimtex_syntax_enabled = 1
        vim.g.vimtex_indent_enabled = 1
        vim.g.vimtex_view_zathura_sync = 1
        vim.g.vimtex_quickfix_mode = 0
    end,
    
}
