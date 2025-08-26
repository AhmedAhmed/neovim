return {
    "theprimeagen/harpoon",
    config = function()
        -- INFO: harpoon configration.
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        vim.keymap.set("n", "<leader>a", mark.add_file, {desc = "Add file to Harpoon"})
        vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

        vim.keymap.set("n", "<C-n>", function() ui.nav_next() end, {desc = "Navigate to next file"})
        vim.keymap.set("n", "<C-m>", function() ui.nav_prev() end, {desc = "Navigate to previous file"})
    end
}
