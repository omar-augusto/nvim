local status, window_picker = pcall(require, 'window-picker')

if not status then
    print('Window-Picker package is not installed')
    return
end

window_picker.setup({
    filter_rules = {
        include_current_win = false,
        autoselect_one = true,
        -- filter using buffer options
        bo = {
            -- if the file type is one of following, the window will be ignored
            filetype = { 'neo-tree', 'neo-tree-popup', 'notify' },
            -- if the buffer type is one of following, the window will be ignored
            buftype = { 'terminal', 'quickfix' },
        },
    },
})
