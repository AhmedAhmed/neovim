return {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
        "SmiteshP/nvim-navic",
        "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
        -- configurations go here
        exclude_filetypes = { "toggleterm" },
        theme = {
            normal = {
                -- bg = "#1e2021",
                -- bg = "#1e2228",
                bg = "#1a1b26",
            },
        }
    },
}
