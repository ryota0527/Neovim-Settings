-- activete lazy
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

require("lazy").setup(require("plugins"))
require("keymap")
require("colorsettings")

-- activete pyright
vim.lsp.config('pyright', {})
vim.lsp.enable('pyright')

-- vimtex setting
vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_compiler_latexmk = {
  build_dir = "",
  callback = 1,
  continuous = 1,
  executable = "latexmk",
  options = {
    "-pdf",
    "-interaction=nonstopmode",
    "-synctex=1",
    "-file-line-error",
  },
}
vim.g.vimtex_view_automatic = 1
vim.g.vimtex_syntax_enabled = 1
vim.g.vimtex_indent_enabled = 1
vim.g.vimtex_view_zathura_sync = 1
vim.g.vimtex_view_zathura_options = "--synctex-forward @line:@col:@tex @pdf"

-- set row numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#333333" })

-- set indent
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.backspace = "indent,eol,start"
vim.opt.autoindent = true
vim.opt.smartindent = true

-- clipboard shearing
vim.opt.clipboard = "unnamedplus"

-- conserve undo
vim.opt.undofile = true

-- set window splitting
vim.opt.splitright = true
vim.opt.splitbelow = true

-- scrolloff setting
vim.opt.scrolloff = 6

-- search setting
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- show the relations of blackets
vim.opt.showmatch = true

-- set statusline
vim.opt.laststatus = 2
vim.opt.statusline = "%f %m %r %= %y [%l/%L] %p%%"


