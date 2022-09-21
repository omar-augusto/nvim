local status, neotree = pcall(require, 'neo-tree')

if not status then
  print('neotree package is not installed')
  return
end

neotree.setup({
  close_if_last_window = true,
  popup_border_style = 'rouended',
  enable_git_status = true,
})
