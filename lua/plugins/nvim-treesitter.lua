-- vim.cmd('set foldmethod=expr')
-- vim.cmd('set foldexpr=nvim_treesitter#foldexpr()')

return {
	-- One of "all", "maintained" (parsers with maintainers), or a list of languages
	ensure_installed = "maintained",

	-- Install languages synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- List of parsers to ignore installing
	ignore_install = { "elixir" },

	-- Core Modules
	indent = {
		enable = false,
	},
	highlight = {
		enable = true,

		-- list of language that will be disabled
		disable = { "elixir" },

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		},
	},

	-- Plugins & Extra Modules
	rainbow = {
		enable = true,
		-- disable = { "jsx", "cpp" },
		-- colors = {}, -- table of hex strings
		-- termcolors = {} -- table of colour name strings

		-- Also highlight non-bracket delimiters like html tags,
		-- boolean or table: lang -> boolean
		extended_mode = true,

		-- Do not enable for files with more than n lines, int
		max_file_lines = nil,
	},
	playground = {
		enable = false,
		disable = {},
		updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
		persist_queries = false, -- Whether the query persists across vim sessions
		keybindings = {
			toggle_query_editor = "o",
			toggle_hl_groups = "i",
			toggle_injected_languages = "t",
			toggle_anonymous_nodes = "a",
			toggle_language_display = "I",
			focus_language = "f",
			unfocus_language = "F",
			update = "R",
			goto_node = "<cr>",
			show_help = "?",
		},
	},
}

