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

  -- Airline
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- Bufferline
  use {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
  }

  -- Colorschemes
  use 'NLKNguyen/papercolor-theme'
  use 'ayu-theme/ayu-vim'
  use 'gerardbm/vim-atomic'
  use 'PierreCapo/voir.vim'
  use 'hiroakis/cyberspace.vim'

  -- Complition Engine
  use {
    'neoclide/coc.nvim',
    branch = 'release',
  }

  -- Distraction-free mode
  use 'junegunn/goyo.vim'
  
  -- Fuzzy finder
  use 'RishabhRD/popfix'
  use 'RishabhRD/nvim-finder'

  -- Git
  use 'tpope/vim-fugitive' -- Complement to command line git
  use 'airblade/vim-gitgutter' -- Buffer git integration

  -- Javascript
  use 'pangloss/vim-javascript' -- Improved highlighting for JS

  -- Lua library
  use 'nvim-lua/plenary.nvim'

  -- Markdown
  use 'plasticboy/vim-markdown'

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

  -- JSON 
  use 'elzr/vim-json'
end)
