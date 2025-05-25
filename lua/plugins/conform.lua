return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")
        local prettier = { 'prettierd', 'prettier', stop_after_first = true }

        conform.setup({
            formatters_by_ft = {
                lua = { "stylua" },
                javascript = prettier,
                typescript = prettier,
                javascriptreact = prettier,
                typescriptreact = prettier,
                json = prettier,
                java = { "google-java-format" },
                markdown = prettier,
                erb = { "htmlbeautifier" },
                html = { "htmlbeautifier" },
                bash = { "beautysh" },
                proto = { "buf" },
                rust = { "rustfmt" },
                yaml = { "yamlfix" },
                toml = { "taplo" },
                css = prettier,
                scss = prettier,
                sh = { "shellcheck" },
                php = prettier,
                python = { 'black' },
            },
        })

        vim.keymap.set({ 'n', 'v' }, '<Leader>f', function()
            require('conform').format({
                async        = false,
                timeout_ms   = 500,
                lsp_fallback = true
            })
        end, { desc = "Format file or range (in visual mode)" })

        vim.api.nvim_create_autocmd('BufWritePre', {
            pattern = '*',
            callback = function(args)
                require('conform').format({
                    async = false,
                    bufnr = args.buf,
                    lsp_fallback = true
                })
            end,
        })
    end,
}
