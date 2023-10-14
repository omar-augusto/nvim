function plugins(use)
    -----------------------------------------
    -- Align packages alphabetically by topic
    -----------------------------------------

    use('stevearc/aerial.nvim')

    -- Airline
    use({
        'vim-airline/vim-airline',
        'vim-airline/vim-airline-themes',
    })

    -- Bufferline
    use({
        'akinsho/bufferline.nvim',
        tag = 'v2.*',
    })

    -- Colorschemes
    use({
        'zanglg/nova.nvim',
        'sainnhe/edge',
        'Everblush/nvim',
        'sainnhe/sonokai',
        'xero/miasma.nvim',
        'sainnhe/everforest',
        'nvimdev/zephyr-nvim',
        'lewpoly/sherbet.nvim',
        'Mofiqul/adwaita.nvim',
        'Avimitin/neovim-deus',
        'yazeed1s/minimal.nvim',
        'yazeed1s/oh-lucy.nvim',
        'luisiacc/gruvbox-baby',
        'folke/tokyonight.nvim',
        'rebelot/kanagawa.nvim',
        'EdenEast/nightfox.nvim',
        'Aryansh-S/fastdark.vim',
        'tiagovla/tokyodark.nvim',
        'sainnhe/gruvbox-material',
        'olimorris/onedarkpro.nvim',
        'dangminhngo/gemstones.nvim',
        'olivercederborg/poimandres.nvim',
    })

    -- Complition Engine
    use({
        'neoclide/coc.nvim',
        branch = 'release',
    })

    -- Distraction-free mode
    use('junegunn/goyo.vim')

    -- Git
    use({
        'tpope/vim-git', -- Syntax, indent, and filetype plugin files for git commits
        'tpope/vim-fugitive', -- Complement to command line git
        'airblade/vim-gitgutter', -- Buffer git integration
    })

    -- Greeter
    use({
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('alpha').setup(require('alpha.themes.startify').config)
        end,
    })

    -- HTML
    use('mattn/emmet-vim')

    -- HTTP Client
    use('NTBBloodbath/rest.nvim')

    -- Indent Blankline
    use('lukas-reineke/indent-blankline.nvim')

    -- Lua library
    use('nvim-lua/plenary.nvim')

    -- LSP
    use('neovim/nvim-lspconfig')

    -- Markdown
    use('plasticboy/vim-markdown')

    use({
        'iamcco/markdown-preview.nvim',
        run = function()
            vim.fn['mkdp#util#install']()
        end,
    })

    -- Multicursor
    use('mg979/vim-visual-multi')

    -- Neotree
    use({
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v3.x',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim',
            {
                's1n7ax/nvim-window-picker',
                version = '2.*',
            },
        },
    })

    -- Nerdcommenter
    use('preservim/nerdcommenter')

    -- Packer
    use('wbthomason/packer.nvim')

    -- Text Alignment
    use('godlygeek/tabular')

    -- Tree Sitter
    use({
        'nvim-treesitter/nvim-treesitter',
        'nvim-treesitter/playground',
        run = ':TSUpate',
    })

    -- JSON
    use('elzr/vim-json')
end

return plugins
