
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use 'norcalli/nvim-colorizer.lua'

  use 'tpope/vim-fugitive'

  use {
    'lewis6991/gitsigns.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
  }

  -- use 'itchyny/lightline.vim'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use 'tpope/vim-commentary'

  use 'neovim/nvim-lspconfig'

  use 'nvim-lua/completion-nvim'

  use 'hrsh7th/nvim-cmp'

  use 'hrsh7th/cmp-nvim-lsp'

  use 'hrsh7th/cmp-buffer'

  use 'hrsh7th/cmp-path'

  use 'saadparwaiz1/cmp_luasnip'

  use { 'L3MON4D3/LuaSnip' }

  use 'onsails/lspkind-nvim'

    -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use 'jackguo380/vim-lsp-cxx-highlight'

  use 'mfussenegger/nvim-jdtls'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
  }

  -- You can alias plugin names
  -- use {'dracula/vim', as = 'dracula'}
  use 'Mofiqul/dracula.nvim'

  use {'ellisonleao/gruvbox.nvim', requires = {'rktjmp/lush.nvim'}}

  use 'folke/tokyonight.nvim'

  use {
    'chipsenkbeil/distant.nvim',
    config = function()
      require('distant').setup {
        -- Applies Chip's personal settings to every machine you connect to
        --
        -- 1. Ensures that distant servers terminate with no connections
        -- 2. Provides navigation bindings for remote directories
        -- 3. Provides keybinding to jump into a remote file's parent directory
        ['*'] = require('distant.settings').chip_default()
      }
    end
  }

  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
  }

end)
