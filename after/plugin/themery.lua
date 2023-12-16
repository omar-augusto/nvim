local status, themery = pcall(require, 'themery')

if not status then
    print('Themery package is not installed.')
    return
end

themery.setup({
    themes = {
        'nova',
        'edge',
        'everblush',
        'sonokai',
        'miasma',
        'everforest',
        'zephyr',
        'sherbet',
        'adwaita',
        'deus',
        'minimal',
        'oh-lucy',
        'gruvbox-baby',
        'tokyonight-day',
        'tokyonight-moon',
        'tokyonight-night',
        'tokyonight-storm',
        'kanagawa-dragon',
        'kanagawa-lotus',
        'kanagawa-wave',
        'nightfox',
        'dayfox',
        'dawnfox',
        'duskfox',
        'nordfox',
        'terafox',
        'carbonfox',
        'fastdark',
        'tokyodark',
        'gruvbox-material',
        'onedark_dark',
        'onedark_vivid',
        'onelight',
        'gemstones',
        'poimandres',
        'oxocarbon',
    },
    themeConfigFile = '~/.config/nvim/lua/settings/theme.lua',
    livePreview = true,
})
