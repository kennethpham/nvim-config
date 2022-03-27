-- Kenneth's packer config

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

  use 'itchyny/lightline.vim'

  use '9mm/vim-closer'

  use 'tpope/vim-commentary'

  use 'neovim/nvim-lspconfig'

  use 'nvim-lua/completion-nvim'

  use 'hrsh7th/nvim-cmp'

  use 'hrsh7th/cmp-nvim-lsp'

  use 'hrsh7th/cmp-buffer'

  use 'onsails/lspkind-nvim'

    -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use 'jackguo380/vim-lsp-cxx-highlight'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
  }

  -- You can alias plugin names
  use {'dracula/vim', as = 'dracula'}

  use {'ellisonleao/gruvbox.nvim', requires = {'rktjmp/lush.nvim'}}

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

end)
