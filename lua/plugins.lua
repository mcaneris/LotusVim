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

	-- Themes
	use 'projekt0n/github-nvim-theme'

	-- LSP
	use {
		'neovim/nvim-lspconfig',
		'williamboman/nvim-lsp-installer',
	}
  use 'folke/trouble.nvim'
	use 'folke/lsp-colors.nvim'

	-- Treesitter
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use 'nvim-treesitter/playground'
	use 'p00f/nvim-ts-rainbow'
	use 'windwp/nvim-ts-autotag'

	-- Completion
	use { 'ms-jpq/coq_nvim', branch = 'coq' }
	use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
	use { 'ms-jpq/coq.thirdparty', branch = '3p' }
	-- use 'github/copilot.vim'

	-- Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } }
  }

	-- Integrations
	use 'kdheepak/lazygit.nvim'

	-- use { 'prettier/vim-prettier', run = 'yarn install' }

	use 'tami5/lspsaga.nvim'
	-- use 'ntpeters/vim-better-whitespace'

	-- UI
	use 'glepnir/dashboard-nvim'
	use 'romgrk/barbar.nvim'
	use 'folke/which-key.nvim'

	use { 
		'lewis6991/gitsigns.nvim',
		requires = { 'nvim-lua/plenary.nvim' }
	}

	use {
    'glepnir/galaxyline.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

	use 'junegunn/goyo.vim'
end
)
