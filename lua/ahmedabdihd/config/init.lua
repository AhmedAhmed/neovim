require("ahmedabdihd.config.remap")
require("ahmedabdihd.config.set")
require("ahmedabdihd.config.lazy")

local augroup = vim.api.nvim_create_augroup
local AhmedAbdiHDGroup = augroup('ahmedabdihd', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({ "BufWritePre" }, {
    group = AhmedAbdiHDGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

-- netrw configuration

-- disable netrw
-- vim.g.loaded_netrwPlugin = 1
-- vim.g.loaded_netrw = 1

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- netrw config
vim.g.netrw_local_delete_recursive = 1
