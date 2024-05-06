local setup = function()
    local THEMES = {
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
    }

    return {
        themes = THEMES,
        themeConfigFile = '~/.config/nvim/lua/theme.lua',
        livePreview = true,
    }
end

local config = function()
    require('themery').setup(setup())
end

return {
    'zaldih/themery.nvim',
    config = config,
}
