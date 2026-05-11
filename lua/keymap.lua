-- set keymap

-- insert mode
vim.keymap.set("i", "jk", "<Esc>", { noremap = true })

-- visual mode
vim.keymap.set("v", "jk", "<Esc>", { noremap = true})
vim.keymap.set("v", "<A-h>", "10h", { noremap = true })
vim.keymap.set("v", "<A-j>", "10j", { noremap = true })
vim.keymap.set("v", "<A-k>", "10k", { noremap = true })
vim.keymap.set("v", "<A-l>", "10l", { noremap = true })

-- normal mode
vim.keymap.set("n", "<A-h>", "10h", { noremap = true })
vim.keymap.set("n", "<A-j>", "10j", { noremap = true })
vim.keymap.set("n", "<A-k>", "10k", { noremap = true })
vim.keymap.set("n", "<A-l>", "10l", { noremap = true })
vim.keymap.set("n", "<Tab>", ">>", { noremap = true })
vim.keymap.set("n", "<S-Tab>", "<<", { noremap = true })
vim.keymap.set("n", "gh", "^", { noremap = true })
vim.keymap.set("n", "gl", "$", { noremap = true })
