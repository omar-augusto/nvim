-- Sets update time to 100 milliseconds,
-- gitgutter depends on updatetime to refresh.
vim.opt.updatetime = 100

-- Sets SignColumn background color, theme overwrites it
vim.cmd[[highlight SignColumn guibg=dark ctermbg=0]]

-- Display the signcolumn by default
vim.opt.signcolumn = 'yes'
