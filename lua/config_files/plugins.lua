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
    requires = 'MunifTanjim/nui.nvim',
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
