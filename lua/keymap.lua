-- set keymap

-- insert mode
vim.keymap.set("i", "jk", "<Esc>", { noremap = true })
vim.keymap.set("i", "<C-d>", "<BS>", { noremap = true })
vim.keymap.set("i", "<Tab>", "<C-t>", { noremap = true })
vim.keymap.set("i", "<S-Tab>", "<C-d>", { noremap = true })

-- visual mode
vim.keymap.set("v", "jk", "<Esc>", { noremap = true })
vim.keymap.set("v", "<A-h>", "10h", { noremap = true })
vim.keymap.set("v", "<A-j>", "10j", { noremap = true })
vim.keymap.set("v", "<A-k>", "10k", { noremap = true })
vim.keymap.set("v", "<A-l>", "10l", { noremap = true })
vim.keymap.set("v", "<Tab>", ">gv", { noremap = true })
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true })
vim.keymap.set("v", "gh", "^", { noremap = true })
vim.keymap.set("v", "gl", "$", { noremap = true })

-- normal mode
vim.keymap.set("n", "<A-h>", "10h", { noremap = true })
vim.keymap.set("n", "<A-j>", "10j", { noremap = true })
vim.keymap.set("n", "<A-k>", "10k", { noremap = true })
vim.keymap.set("n", "<A-l>", "10l", { noremap = true })
vim.keymap.set("n", "<Tab>", ">>", { noremap = true })
vim.keymap.set("n", "<S-Tab>", "<<", { noremap = true })
vim.keymap.set("n", "gh", "^", { noremap = true })
vim.keymap.set("n", "gl", "$", { noremap = true })
vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>", { noremap = true })
vim.keymap.set("n", "<leader><Tab>", "<cmd>BufferNext<cr>", { noremap = true })
vim.keymap.set("n", "<leader><S-tab>", "<cmd>BufferPrevious<cr>", { noremap = true })
