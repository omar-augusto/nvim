local setup = function()
    local THEMES = {
        'adwaita',
        'carbonfox',
        'dawnfox',
        'dayfox',
        'deus',
        'duskfox',
        'edge',
        'everblush',
        'everforest',
        'fastdark',
        'gemstones',
        'gruvbox-baby',
        'gruvbox-material',
        'kanagawa-dragon',
        'kanagawa-lotus',
        'kanagawa-wave',
        'miasma',
        'minimal',
        'nightfox',
        'nordfox',
        'nova',
        'oh-lucy',
        'onedark_dark',
        'onedark_vivid',
        'onelight',
        'oxocarbon',
        'poimandres',
        'sherbet',
        'sonokai',
        'terafox',
        'tokyodark',
        'tokyonight-day',
        'tokyonight-moon',
        'tokyonight-night',
        'tokyonight-storm',
        'zephyr',
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
