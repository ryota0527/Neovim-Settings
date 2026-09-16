-- set keymap

-- insert mode
vim.keymap.set("i", "jk", "<Esc>", { noremap = true })
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

vim.keymap.set("n", "<leader><Tab>", "<cmd>BufferNext<cr>", { noremap = true })
vim.keymap.set("n", "<leader><S-tab>", "<cmd>BufferPrevious<cr>", { noremap = true })

vim.keymap.set("n", "<left>", "<C-w><", { noremap = true })
vim.keymap.set("n", "<right>", "<C-w>>", { noremap = true })
vim.keymap.set("n", "<up>", "<C-w>+", { noremap = true })
vim.keymap.set("n", "<down>", "<C-w>-", { noremap = true })

vim.keymap.set("n", "<leader>i", vim.diagnostic.open_float, { noremap = true })

vim.keymap.set("n", "<leader><right>", "<C-w>l", { noremap = true })
vim.keymap.set("n", "<leader><left>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<leader><up>", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<leader><down>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<leader>l", "<C-w>l", { noremap = true })
vim.keymap.set("n", "<leader>h", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<leader>k", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<leader>j", "<C-w>j", { noremap = true })

vim.keymap.set("n", "<leader>o", function()
    for _, win in ipairs(vim.api.nvim_list_wins()) do
        local buf = vim.api.nvim_win_get_buf(win)

        if vim.bo[buf].filetype == "oil" then
            vim.api.nvim_set_current_win(win)
            return
        end
    end
end, { noremap = true })
