vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>gg", "<cmd> !go run github.com/99designs/gqlgen generate<CR>")
vim.keymap.set("n", "<leader>l", "<cmd>:Lazy<CR>")
vim.keymap.set("n", "<leader>h", "<cmd>:Mason<CR>")
vim.keymap.set("n", "ff", "<cmd>Oil<CR>")
vim.keymap.set("n", "<leader>so", "<cmd>:so ~/.config/nvim/init.lua<CR>")

-- handle buffers.
-- vim.keymap.set("n", "<leader>n", "<cmd>:bprev<CR>");
-- vim.keymap.set("n", "<leader>m", "<cmd>:bnext<CR>");
-- vim.keymap.set("n", "<leader>x", "<cmd>:bd<CR>");

-- move lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- Copy to clipboard

vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+yg_')
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>yy", '"+yy')

-- Paste from clipboard
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>P", '"+P')
vim.keymap.set("v", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>P", '"+P')

-- dadbod imports
vim.keymap.set("n", "<leader>db", ":DBUIToggle<CR>")
