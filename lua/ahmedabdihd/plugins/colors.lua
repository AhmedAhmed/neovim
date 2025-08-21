function ColorMyPencils(color)
    color = color or "rose-pine-moon"

    vim.cmd.colorscheme(color)

    vim.opt.background = "dark"

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NonText", { bg = "none" })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "Folded", { bg = "none" })
    vim.api.nvim_set_hl(0, "FoldColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "BufLine", { bg = "#191724" })
end

return {
    {
        "2nthony/vitesse.nvim",
        dependencies = {
            "tjdevries/colorbuddy.nvim"
        },
    },
    {
        "erikbackman/brightburn.vim",
        config = function()
            ColorMyPencils()
        end
    },
    {
        "Mofiqul/dracula.nvim",
    },
    {
        "folke/tokyonight.nvim",
        config = function()
            ColorMyPencils()
            require("tokyonight").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                style = "night",        -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                -- transparent = true,     -- Enable this to disable setting the background color
                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = false },
                    keywords = { italic = false },
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "dark", -- style for sidebars, see below
                    floats = "dark",   -- style for floating windows
                },
            })
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            ColorMyPencils()
        end
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        config = function()
            ColorMyPencils()
        end
    },
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        priority = 1000,
        config = function()
            ColorMyPencils()
        end
    },
    {
        "navarasu/onedark.nvim",
        name = "onedark",
        priority = 1000
    },
}
