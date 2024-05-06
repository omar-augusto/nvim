local setup = function()
    local THEMES = {
        'adwaita',
        'carbonfox',
        'dawnfox',
        'dayfox',
        'deus',
        'edge',
        'everblush',
        'everforest',
        'fastdark',
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
        'oxocarbon',
        'poimandres',
        'rose-pine',
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
