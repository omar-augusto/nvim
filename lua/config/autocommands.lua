-- Opens a markdown file in Vivaldi Browser

local VIVALDI_EXEC =
    '/Applications/Vivaldi.app/Contents/MacOS/Vivaldi'

vim.api.nvim_create_autocmd('BufReadPost', {
    pattern = '*.md',
    command = ':!' .. VIVALDI_EXEC .. ' file://% --new-window',
})

-- Disable signs column on terminal buffers
vim.cmd [[
  augroup MyTerminalSettings
    autocmd!
    autocmd TermOpen * setlocal signcolumn=no
  augroup END
]]
