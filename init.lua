-- kennethpham's init.lua file

-- Packer config
require 'packer.plugins'

-- Neovim Settings
vim.cmd([[source ~/.config/nvim/lua/settings.vim]])

-- Plugin Config
vim.cmd([[source ~/.config/nvim/lua/packer/configs/lightline.vim]])
vim.cmd([[source ~/.config/nvim/lua/packer/configs/vim-fugitive.vim]])
require 'packer.configs.lsp.nvim-lspconfig';
require 'packer.configs.lsp.nvim-cmp'
require 'packer.configs.lsp.lua-language-server'
-- require 'packer.lsp.ccls';
require 'packer.configs.telescope'
require 'packer.configs.gitsigns'
require 'packer.configs.nvim-colorizer'
