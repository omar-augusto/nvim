function plugins(use)
    -----------------------------------------
    -- Align packages alphabetically by topic
    -----------------------------------------

    use('stevearc/aerial.nvim')

    -- Airline
    use('vim-airline/vim-airline')
    use('vim-airline/vim-airline-themes')

    -- Bufferline
    use({
        'akinsho/bufferline.nvim',
        tag = 'v2.*',
    })

    -- Colorschemes
    use('zanglg/nova.nvim')
    use('luisiacc/gruvbox-baby')
    use('folke/tokyonight.nvim')
    use('EdenEast/nightfox.nvim')
    use('olimorris/onedarkpro.nvim')
    use('dangminhngo/gemstones.nvim')
    use('Aryansh-S/fastdark.vim')
    use('sainnhe/edge')
    use('sainnhe/sonokai')
    use('sainnhe/everforest')
    use('sainnhe/gruvbox-material')
    use('nvimdev/zephyr-nvim')
    use('xero/miasma.nvim')
    use('yazeed1s/oh-lucy.nvim')
    use('olivercederborg/poimandres.nvim')
    use('rebelot/kanagawa.nvim')
    use('Everblush/nvim')
    use('yazeed1s/minimal.nvim')
    use('lewpoly/sherbet.nvim')
    use('Mofiqul/adwaita.nvim')
    use('tiagovla/tokyodark.nvim')
    use('Avimitin/neovim-deus')

    -- Complition Engine
    use({
        'neoclide/coc.nvim',
        branch = 'release',
    })

    -- Distraction-free mode
    use('junegunn/goyo.vim')

    -- Git
    use('tpope/vim-git') -- Syntax, indent, and filetype plugin files for git commits
    use('tpope/vim-fugitive') -- Complement to command line git
    use('airblade/vim-gitgutter') -- Buffer git integration

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
