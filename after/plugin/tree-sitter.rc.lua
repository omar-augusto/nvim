local status, TS = pcall(require, 'nvim-treesitter.configs')

if not status then
    print('Treesitter package is not installed.')
    return
end

function treesittertrunc(lang, buf)
    local max_filesize = 100 * 1024 -- 100 KB
    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))

    if ok and stats and stats.size > max_filesize then
        return true
    end
end

TS.setup({
    ensure_installed = {
        'typescript',
        'javascript',
        'lua',
        'rust',
        'http',
        'json',
        'python',
        'jsdoc',
    },

    auto_install = true,

    highlight = {
        enable = true,
        -- Disable slow treesitter highlight for large files
        disable = treesittertrunc,
        additional_vim_regex_highlighting = false,
    },
})
