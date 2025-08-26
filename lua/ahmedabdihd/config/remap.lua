vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>gg", "<cmd>!go run github.com/99designs/gqlgen generate<CR>")
vim.keymap.set("n", "<leader>l", "<cmd>:Lazy<CR>")
vim.keymap.set("n", "<leader>h", "<cmd>:Mason<CR>")
vim.keymap.set("n", "<leader>zig", "<cmd>:LspRestart<CR>")

-- conform.nvim
vim.keymap.set("", "<leader>f", function()
    require("conform").format({ async = true, lsp_fallback = true })
end)

-- git stuff
vim.keymap.set("n", "<leader>bb", "<cmd>ToggleBlameLine<CR>")

-- oil.nvim
vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open Oil nvim"})

-- sourrce different lua files
vim.keymap.set("n", "<leader>so", "<cmd>:so ~/.config/nvim/init.lua<CR>")
vim.keymap.set("n", "<leader><leader>", function()
    -- command to open the current file in a new tab
    vim.cmd("so")
    print("Lua sourced current file")
end, {desc = "Source current file"})

-- handle buffer switching
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

-- Paste from clipboard. Goated bit!
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>P", '"+P')
vim.keymap.set("v", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>P", '"+P')

-- dadbod imports
vim.keymap.set("n", "<leader>db", ":DBUIToggle<CR>")

-- Copilot Remap
vim.keymap.set("n", "<leader>aa", "<cmd>:CopilotChatToggle<CR>")
vim.keymap.set("n", "<C-g>r", "<cmd>:GpRewrite<CR>")
vim.keymap.set("v", "<C-g>r", "<cmd>:GpRewrite<CR>")
vim.keymap.set("n", "<C-g>n", "<cmd>:GpNextAgent<CR>")
vim.keymap.set("v", "<C-g>n", "<cmd>:GpNextAgent<CR>")
vim.keymap.set("n", "<C-g>p", "<cmd>:GpPrevAgent<CR>")
vim.keymap.set("v", "<C-g>p", "<cmd>:GpPrevAgent<CR>")

-- disabled arrow keys.
vim.keymap.set("n", "<Up>", "<Nop>")
vim.keymap.set("n", "<Down>", "<Nop>")
vim.keymap.set("n", "<Left>", "<Nop>")
vim.keymap.set("n", "<Right>", "<Nop>")
vim.keymap.set("v", "<Up>", "<Nop>")
