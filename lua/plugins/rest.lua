local function config()
    local rest = require('rest-nvim')

    rest.setup({})

    local function buff_callback()
        local buff = tonumber(vim.fn.expand('<abuf>'), 10)

        vim.keymap.set(
            'n',
            '<leader>rn',
            rest.run,
            { noremap = true, buffer = buff }
        )

        vim.keymap.set(
            'n',
            '<leader>rl',
            rest.last,
            { noremap = true, buffer = buff }
        )

        vim.keymap.set('n', '<leader>rp', function()
            rest.run(true)
        end, { noremap = true, buffer = buff })
    end

    vim.api.nvim_create_autocmd('FIleType', {
        pattern = 'http',
        callback = buff_callback,
    })
end

return {
    {
        'vhyrro/luarocks.nvim',
        priority = 1000,
        config = true,
        opts = {
            rocks = { 'lua-curl', 'nvim-nio', 'mimetypes', 'xml2lua' },
        },
    },
    {
        'rest-nvim/rest.nvim',
        ft = 'http',
        dependencies = { 'luarocks.nvim' },
        config = function()
            require('rest-nvim').setup()
        end,
    },
}
