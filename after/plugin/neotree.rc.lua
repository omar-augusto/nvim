local status, neotree = pcall(require, 'neo-tree')

if not status then
    print('Neotree package is not installed')
    return
end

-- Icons for diagnostic errors

-- stylua: ignore
local DIAGNOSTICS_SIGNS = {
    WARN    = 'DiagnosticSignWarn',
    INFO    = 'DiagnosticSignInfo',
    HINT    = 'DiagnosticSignHint',
    ERROR   = 'DiagnosticSignError',
}

vim.fn.sign_define(
    DIAGNOSTICS_SIGNS.ERROR,
    { text = ' ', texthl = DIAGNOSTICS_SIGNS.ERROR }
)

vim.fn.sign_define(
    DIAGNOSTICS_SIGNS.WARN,
    { text = ' ', texthl = DIAGNOSTICS_SIGNS.WARN }
)

vim.fn.sign_define(
    DIAGNOSTICS_SIGNS.INFO,
    { text = ' ', texthl = DIAGNOSTICS_SIGNS.INFO }
)

vim.fn.sign_define(
    DIAGNOSTICS_SIGNS.HINT,
    { text = ' ', texthl = DIAGNOSTICS_SIGNS.HINT }
)

-- stylua: ignore start

neotree.setup({
    enable_git_status       = true,
    enable_diagnostics      = true,
    close_if_last_window    = false,
    popup_border_style      = 'rounded',
    hijack_netrw_behavior   = 'open_default',

    default_component_configs = {
        indent = {
            indent_size = 2,
            with_markers = true,
            indent_marker = '❘',
            last_indent_marker = '',

            -- expanders
            expander_expanded  = '',
            expander_collapsed = '',
        },
        name = {
            trailing_slash = true,
            use_git_status_colors = true,
        },
        git_status = {
            symbols = {
              -- Change type
              added     = " ",
              modified  = " ",
              deleted   = "✖ ",
              renamed   = " ",
              -- Status type
              untracked = " ",
              ignored   = " ",
              unstaged  = "☐ ",
              staged    = "☑ ",
              conflict  = "☒ ",
            }
          },
        file_size = {
            enabled = true,
            required_width = 64,
        },
        type = {
            enabled = true,
            required_width = 122,
        },
        last_modified = {
            enabled = true,
            required_width = 88,
        },
        created = {
            enabled = true,
            required_width = 110,
        },
        symlink_target = {
            enabled = true,
            required_width = 200,
        },
    },

    window = {
        position = 'float',
        mapping_options = {
            nowait  = true,
            noremap = true,
        }
    },
})

-- stylua: ignore end

vim.cmd([[nnoremap / :Neotree toggle current reveal_force_cwd<cr>]])
vim.cmd([[nnoremap \| :Neotree focus filesystem left reveal toggle<cr>]])
vim.cmd([[nnoremap <leader>b :Neotree toggle show buffers right<cr>]])
vim.cmd([[nnoremap gs :Neotree float git_status<cr>]])
