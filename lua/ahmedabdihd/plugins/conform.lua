return {
    "stevearc/conform.nvim",
    config = function()
        require('conform').setup({
            formatters_by_ft = {
                lua = { "stylua" },
                go = { "gofmt" },
                python = { "black", "isort" },
                javascript = { "prettierd", "prettier", stop_after_first = true },
                typescript = { "prettierd", "prettier", stop_after_first = true },
                typescriptreact = { "prettierd", "prettier", stop_after_first = true },
                javascriptreact = { "prettierd", "prettier", stop_after_first = true },
                html = { "prettierd", "prettier", stop_after_first = true },
                css = { "prettierd", "prettier", stop_after_first = true },
                json = { "prettierd", "prettier", stop_after_first = true },
                markdown = { "prettierd", "prettier", stop_after_first = true },
                elixir = { "mix format" },
                solidity = { "prettierd" },
                graphql = { "prettierd" }
            },
        });

        -- format on save
        -- vim.api.nvim_create_autocmd("BufWritePre", {
        --     pattern = "*",
        --     callback = function(args)
        --         require("conform").format({ bufnr = args.buf })
        --     end
        -- })
    end
}
