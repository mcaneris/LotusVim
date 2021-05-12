require'nvim-treesitter.configs'.setup {
	highlight = {
    enable = true,
	},
  autotag = {
    enable = true,
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()

parser_config.elixir = {
  install_info = {
    url = "~/Code/dotfiles/nvim/nvim-lsp/tree-sitter/tree-sitter-elixir",
    files = {"src/parser.c"}
  },
  filetype = "elixir",
  used_by = {"eelixir"}
}
