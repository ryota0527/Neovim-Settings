-- leader key
vim.g.mapleader = " "

-- set tabline
vim.opt.showtabline = 2

-- activete lazy
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

-- plugins and configs loading
require("lazy").setup("plugins")
require("config.keymap")
require("config.colorsettings")
require("config.commands")

-- set row numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#333333" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#333333" })

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
