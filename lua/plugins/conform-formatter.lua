local function setup_conform()
    local prettier = { { 'prettierd', 'prettier' } }

    local FORMATTERS_BY_TL = {
        javascript = prettier,
        typescript = prettier,
        markdown = prettier,
        jsonc = prettier,
        json = prettier,
        yaml = prettier,
        php = prettier,
        lua = { 'stylua' },
    }

    local FORMATTERS = {
        prettierd = {
            env = {
                PRETTIERD_DEFAULT_CONFIG = os.getenv('MYVIMRC'):match('(.*/)')
                    .. 'miscellaneous/prettierrc.json',
            },
        },
        eslint_d = {
            require_cwd = true,
            cwd = require('conform.util').root_file({
                '.eslintrc',
                '.eslintrc.js',
                '.eslintrc.cjs',
                '.eslintrc.mjs',
                '.eslintrc.json',
                '.eslintrc.yaml',
            }),
        },
    }

    return {
        formatters_by_tl = FORMATTERS_BY_TL,
        formatters = FORMATTERS,
        format_on_save = {
            async = true,
            lsp_fallback = true,
        },
    }
end

local function config()
    require('conform').setup(setup_conform())

    vim.keymap.set({ 'n', 'v' }, '<Leader>f', function()
        require('conform').format({ async = true, lsp_fallback = true })
    end, {})

    vim.api.nvim_create_autocmd('BufWritePre', {
        pattern = '*',
        callback = function(args)
            require('conform').format({ bufnr = args.buf, async = true, lsp_fallback = true })
        end,
    })
end

return {
    'stevearc/conform.nvim',
    config = config,
}
