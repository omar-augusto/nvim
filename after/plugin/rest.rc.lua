local status, rest_nvim = pcall(require, 'rest-nvim')

if not status then
  print('NTBBloodbath/rest.nvim package is not installed')
  return
end

rest_nvim.setup({
  -- Open request results in a horizontal split
  result_split_horizontal = false,
  -- Keep the http file buffer above|left when split horizontal|vertical
  result_split_in_place = false,
  -- Skip SSL verification, useful for unknown certificates
  skip_ssl_verification = false,
  -- Encode URL before making request
  encode_url = true,
  -- Highlight request on run
  highlight = {
    enabled = true,
    timeout = 150,
  },
  result = {
    -- toggle showing URL, HTTP info, headers at top the of result window
    show_url = true,
    show_http_info = true,
    show_headers = true,
    -- executables or functions for formatting response body [optional]
    -- set them to nil if you want to disable them
    formatters = {
      json = nil,
      html = nil,
    },
  },
  -- Jump to request line on run
  jump_to_request = false,
  env_file = '.env',
  custom_dynamic_variables = {},
  yank_dry_run = true,
})

vim.api.nvim_create_autocmd('FIleType', {
  pattern = 'http',
  callback = function()
    local buff = tonumber(vim.fn.expand('<abuf>'), 10)
    vim.keymap.set('n', '<leader>rn', rest_nvim.run, { noremap = true, buffer = buff })
    vim.keymap.set('n', '<leader>rl', rest_nvim.last, { noremap = true, buffer = buff })
    vim.keymap.set('n', '<leader>rp', function() rest_nvim.run(true) end, { noremap = true, buffer = buff })
  end
})
