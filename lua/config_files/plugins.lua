local status, packer = pcall(require, 'packer')

if not status then
  print('packer is not installed')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -----------------------------------------
  -- Align packages alphabetically by topic
  -----------------------------------------

  use 'stevearc/aerial.nvim'

  -- Airline
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- Bufferline
  use {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
  }

  -- Colorschemes
  use 'zanglg/nova.nvim'
  use 'luisiacc/gruvbox-baby'
  use 'folke/tokyonight.nvim'
  use 'EdenEast/nightfox.nvim'
  use 'olimorris/onedarkpro.nvim'
  use 'dangminhngo/gemstones.nvim'
  use 'Aryansh-S/fastdark.vim'
  use 'sainnhe/edge'
  use 'sainnhe/sonokai'
  use 'sainnhe/everforest'
  use 'sainnhe/gruvbox-material'
  use 'nvimdev/zephyr-nvim'
  use 'xero/miasma.nvim'
  use 'yazeed1s/oh-lucy.nvim'
  use 'olivercederborg/poimandres.nvim'
  use 'rebelot/kanagawa.nvim'
  use 'Everblush/nvim'
  use 'yazeed1s/minimal.nvim'
  use 'lewpoly/sherbet.nvim'
  use 'Mofiqul/adwaita.nvim'
  use 'tiagovla/tokyodark.nvim'
  use 'Avimitin/neovim-deus'

  -- Complition Engine
  use {
    'neoclide/coc.nvim',
    branch = 'release',
  }

  -- Distraction-free mode
  use 'junegunn/goyo.vim'
  
  -- Git
  use 'tpope/vim-git' -- Syntax, indent, and filetype plugin files for git commits
  use 'tpope/vim-fugitive' -- Complement to command line git
  use 'airblade/vim-gitgutter' -- Buffer git integration

  -- HTML
  use "mattn/emmet-vim"

  -- HTTP Client
  use 'NTBBloodbath/rest.nvim'

  -- Lua library
  use 'nvim-lua/plenary.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Markdown
  use 'plasticboy/vim-markdown'

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  -- Neotree
  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'MunifTanjim/nui.nvim',
      {
        -- only needed if you want to use the commands with "_with_window_picker" suffix
        's1n7ax/nvim-window-picker',
        tag = "v1.*",
        config = function()
          require'window-picker'.setup({
            autoselect_one = true,
            include_current = false,
            filter_rules = {
              -- filter using buffer options
              bo = {
                -- if the file type is one of following, the window will be ignored
                filetype = { 'neo-tree', "neo-tree-popup", "notify" },

                -- if the buffer type is one of following, the window will be ignored
                buftype = { 'terminal', "quickfix" },
              },
            },
            other_win_hl_color = '#e35e4f',
          })
        end,
      }
    }
  }

  -- Nerdcommenter
  use 'preservim/nerdcommenter'

  -- Packer
  use 'wbthomason/packer.nvim'

  -- Text Alignment
  use 'godlygeek/tabular'

  -- Tree Sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- JSON 
  use 'elzr/vim-json'
end)
