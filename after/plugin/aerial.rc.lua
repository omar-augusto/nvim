local status, aerial = pcall(require, 'aerial')

if not status then
  print('aerial package is not installed')
  return
end

aerial.setup({
  -- Set keymaps when aerial has attached to a buffer
  on_attach = function(bufnr)
    -- Jump forwards/backwards with '{' and '}'
    vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', {buffer = bufnr})
    vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', {buffer = bufnr})
  end
})

-- Keymap to toggle aerial
vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle!<CR>')
