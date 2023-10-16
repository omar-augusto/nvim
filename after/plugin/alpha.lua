local status, alpha = pcall(require, 'alpha')

if not status then
    print('Alpha package is not installed')
    return
end

local a_startify = require('alpha.themes.startify')
local a_dashboard = require('alpha.themes.dashboard')

local function divwidth(divby)
    return math.floor(vim.api.nvim_win_get_width(0) / divby)
end

local function gettime()
    local total_plugins = #vim.tbl_keys(packer_plugins)
    local datetime = os.date(' %d-%m-%Y   %H:%M:%S')
    local version = vim.version()
    local nvim_version_info = '   v'
        .. version.major
        .. '.'
        .. version.minor
        .. '.'
        .. version.patch

    return datetime
        .. '   '
        .. total_plugins
        .. ' plugins'
        .. nvim_version_info
end

local sections = {}

-- Set header

sections.header = {
    type = 'text',
    opts = {
        position = 'center',
        hl = 'Type',
    },
}

sections.header.val = {
    '                                                       ',
    '   ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓  ',
    '   ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒  ',
    '  ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░  ',
    '  ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██   ',
    '  ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒  ',
    '  ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░  ',
    '  ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░  ',
    '     ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░     ',
    '           ░    ░  ░    ░ ░        ░   ░         ░     ',
    '                                  ░                    ',
}

-- Set menu
sections.buttons = {
    type = 'group',
    opts = {
        spacing = 1,
    },
}

sections.buttons.val = {
    a_dashboard.button('e', '  > New file', ':ene <BAR> startinsert <CR>'),
    a_dashboard.button(
        'f',
        '  > Find file',
        ':Neotree float filesystem toggle=true<CR>'
    ),
    a_dashboard.button(
        's',
        '  > Settings',
        ':e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>'
    ),
    a_dashboard.button('q', '  > Quit NVIM', ':qa<CR>'),
}

sections.mru_cwd = a_startify.section.mru_cwd

sections.time =
    { type = 'text', val = gettime(), opts = { position = 'center' } }

local config = {
    layout = {
        { type = 'padding', val = 2 },
        sections.header,
        { type = 'padding', val = 2 },
        sections.time,
        { type = 'padding', val = 2 },
        sections.buttons,
        { type = 'padding', val = 1 },
        sections.mru_cwd,
        { type = "padding", val = 2 },
    },
    opts = {
        margin = divwidth(3),
        redraw_on_resize = true,
        setup = a_startify.config.opts.setup,
    },
}

-- Send config to alpha
alpha.setup(config)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
