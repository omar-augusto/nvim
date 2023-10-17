-- Opens a markdown file in Vivaldi Browser

local VIVALDI_EXEC =
    '/Applications/Vivaldi.app/Contents/MacOS/Vivaldi'

vim.api.nvim_create_autocmd('BufReadPost', {
    pattern = '*.md',
    command = ':!' .. VIVALDI_EXEC .. ' file://% --new-window',
})
