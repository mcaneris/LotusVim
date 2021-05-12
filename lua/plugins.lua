local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
	execute 'packadd packer.nvim'
end

return require('packer').startup(
function(use)
	-- Packer can manage itself as an optional plugin
	use 'wbthomason/packer.nvim'
	use 'famiu/nvim-reload'

	-- LSP
	use 'neovim/nvim-lspconfig'
	use 'kabouzeid/nvim-lspinstall'
	use 'folke/lsp-trouble.nvim'
	use 'folke/lsp-colors.nvim'

	-- Treesitter
	use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
	use 'windwp/nvim-ts-autotag'

	-- Explorer
	use 'kyazdani42/nvim-tree.lua'

	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}

	-- Integrations
	use 'christoomey/vim-tmux-navigator'
	use 'kdheepak/lazygit.nvim'

	-- Syntax
	use 'hrsh7th/nvim-compe'
	use {'prettier/vim-prettier', run = 'yarn install'}
  use 'hrsh7th/vim-vsnip'
	use 'rafamadriz/friendly-snippets'
	use 'glepnir/lspsaga.nvim'
	use 'ntpeters/vim-better-whitespace'
	use 'windwp/nvim-autopairs'

	-- Elixir
	use 'elixir-editors/vim-elixir'

	-- UI
	use 'glepnir/dashboard-nvim'
	use 'romgrk/barbar.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use 'folke/which-key.nvim'
	use 'lewis6991/gitsigns.nvim'
	use 'joshdick/onedark.vim'
	use {
		'glepnir/galaxyline.nvim',
		branch = 'main',
		requires = {'kyazdani42/nvim-web-devicons'}
	}
end
)
