-- activete lazy
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

require("plugins")
require("keymap")
require("colorsettings")

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


