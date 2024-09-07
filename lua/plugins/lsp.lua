local SERVERS = { 'lua_ls', 'pyright', 'tsserver', 'phpactor', 'jsonls', 'eslint' }

local autocmp_setup = function()
    local luasnip = require('luasnip')
    local cmp = require('cmp')

    cmp.setup({
        snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end,
        },
        mapping = cmp.mapping.preset.insert({
            ['<C-u>'] = cmp.mapping.scroll_docs(-4), -- Up
            ['<C-d>'] = cmp.mapping.scroll_docs(4),  -- Down
            -- C-b (back) C-f (forward) for snippet placeholder navigation.
            ['<C-Space>'] = cmp.mapping.complete(),
            ['<CR>'] = cmp.mapping.confirm({
                behavior = cmp.ConfirmBehavior.Replace,
                select = true,
            }),
            ['<Tab>'] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif luasnip.expand_or_jumpable() then
                    luasnip.expand_or_jump()
                else
                    fallback()
                end
            end, { 'i', 's' }),
            ['<S-Tab>'] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif luasnip.jumpable(-1) then
                    luasnip.jump(-1)
                else
                    fallback()
                end
            end, { 'i', 's' }),
        }),
        sources = {
            { name = 'nvim_lsp' },
            { name = 'luasnip' },
        },
    })
end

local function copy_diagnostics_to_clipboard()
    local cursor_pos = vim.api.nvim_win_get_cursor(0)
    local diagnostics = vim.diagnostic.get(0, { lnum = cursor_pos[1] - 1 })

    if #diagnostics > 0 then
        local diagnostic_message = diagnostics[1].message
        vim.fn.setreg('+', diagnostic_message)
        print("Diagnostic at cursor copied to clipboard!")
    else
        print("No diagnostics found at the cursor position.")
    end
end

local lsp_config = function()
    local lsp = require('lspconfig')
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    for _, server in ipairs(SERVERS) do
        lsp[server].setup({ capabilities = capabilities })
    end

    autocmp_setup()

    vim.diagnostic.config({
        virtual_text = false,
        float = {
            source = "always",
            border = "rounded",
        },
    })

    vim.api.nvim_create_autocmd("CursorHold", {
        callback = function()
            vim.diagnostic.open_float(nil, { focusable = false })
        end,
    })

    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'crr', vim.lsp.buf.code_action, {})
    vim.keymap.set('v', '<C-R>r', vim.lsp.buf.code_action, {})
    vim.keymap.set('n', 'crn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
    vim.keymap.set('n', '<C-S>', vim.lsp.buf.signature_help, {})
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, {})
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, {})
    vim.keymap.set('n', '<C-W>d', vim.diagnostic.open_float, {})
    vim.keymap.set('n', '<C-W>y', copy_diagnostics_to_clipboard, { noremap = true, silent = true })
end

local mson_config = function()
    require('mason-lspconfig').setup({ ensure_installed = SERVERS })
end

return {
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end,
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = mson_config,
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-nvim-lsp',
            'saadparwaiz1/cmp_luasnip',
            'L3MON4D3/LuaSnip',
        },
        config = lsp_config,
    },
}
