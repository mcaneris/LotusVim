require'nvim-treesitter.configs'.setup {
	highlight = {
    enable = true,
		disable = { 'elixir' }
	},
  autotag = {
    enable = true,
  },
	indent = {
    enable = true
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
