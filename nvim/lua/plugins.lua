return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- LSP
  use { 'neoclide/coc.nvim', branch = 'release' }
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = function()
		  local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
		  ts_update()
	  end,
  }
  -- use 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
  use 'Olical/conjure'

  -- Visual
  use 'dracula/vim'
  use 'rakr/vim-one'
  use 'guns/xterm-color-table.vim'
  use 'lilydjwg/colorizer'

  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'ryanoasis/vim-devicons'

  -- Utilities
  use 'jiangmiao/auto-pairs'

  use({
	  "kylechui/nvim-surround",
	  tag = "*", -- Use for stability; omit to use `main` branch for the latest features
	  config = function()
		  require("nvim-surround").setup()
	  end
  })

  use {
	  'nvim-telescope/telescope.nvim', branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'easymotion/vim-easymotion'

  use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
		  'nvim-tree/nvim-web-devicons'
	  }
  }
end)
