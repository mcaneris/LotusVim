local wk = require("which-key")

wk.register({
	["<leader>"] = {
		e = { ":NvimTreeToggle<CR>", "Toggle Explorer" },
		E = {
			name = "+ Explorer",
			a = { ":let g:nvim_tree_quit_on_open=1<CR>", "Enable Auto Close On Open" },
			A = { ":let g:nvim_tree_quit_on_open=0<CR>", "Disable Auto Close On Open" },
		},
		["!"] = { "<cmd>Telescope command_history<CR>", "Command History" },
		k = { "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>", "Documentation" },
		d = {
			name = "+ Diagnostics",
			b = { "<cmd>TroubleToggle document_diagnostics<CR>", "Diagnostics" },
			d = { "<cmd>lua require('lspsaga.diagnostic').show_line_diagnostics()<CR>", "Line Diagnostics" },
			j = { "<cmd>lua require('lspsaga.diagnostic').lsp_jump_diagnostic_prev()<CR>", "Previous Diagnostic" },
			k = { "<cmd>lua require('lspsaga.diagnostic').lsp_jump_diagnostic_next()<CR>", "Next Diagnostic" },
		},
		a = {
			name = "+ Code Actions",
			E = { "<cmd>Telescope lsp_range_code_actions<CR>", "Code Actions" },
			c = { "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", "Code Action" },
			r = { "<cmd>lua require('lspsaga.rename').rename()<CR>", "Rename" },
			s = { "<cmd>Strip Whitespace<CR>", "Strip Whitespace" },
		},
		c = {
			name = "+ Configuration",
			["<C-s>"] = { "<cmd>Telescope colorscheme<CR>", "Pick Color Scheme" },
		},
		b = {
			name = "+ Buffer",
			r = { "<cmd>Telescope buffers<cr>", "List Buffers" },
			m = {
				name = "+ Move Buffer",
				[","] = { ":BufferMovePrevious<CR>", "Move Buffer Left" },
				["."] = { ":BufferMoveNext<CR>", "Move Buffer Right" },
			},
			w = { ":BufferClose<CR>", "Close Buffer" },
			W = { ":BufferCloseAllButCurrent<CR>", "Close All Other Buffers" },
		},
		w = {
			name = "+ Workspace",
			d = { "<cmd>TroubleToggle lsp_workspace_diagnostics<CR>", "Diagnostics" },
		},
		f = {
			name = "+ File",
			f = { "<cmd>Telescope find_files<CR>", "Find" },
			r = { "<cmd>Telescope oldfiles<CR>", "Recent" },
			g = { "<cmd>Telescope live_grep<CR>", "Grep" },
			n = { "<cmd>enew<cr>", "New File" },
		},
		l = {
			name = "+ LSP",
			f = { "<cmd> lua vim.lsp.buf.formatting()<CR>", "Format" },
			i = { ":LspInfo<CR>", "LSP Info" },
			d = { "<cmd>lua require('lspsaga.provider').lsp_finder()<CR>", "Definition" },
		},
		g = {
			name = "+ Git",
			l = { ":LazyGit<CR>", "Lazy Git" },
			c = { "<cmd>Telescope git_commits<CR>", "Commits" },
			["<C-c>"] = { "<cmd>Telescope git_bcommits<CR>", "Commits (Buffer)" },
			s = { "<cmd>Telescope git_status<CR>", "Status" },
			b = { "<cmd>Telescope git_branches<CR>", "Branches" },
		},
		s = {
			name = "+ Search",
			s = { "g#", "Search Forward" },
			b = { "g*", "Search Backward" },
			c = { ":let @/ = ''<CR>", "Clear Last Search" },
			h = { "<cmd>Telescope search_history<CR>", "Search History" },
		},
	},
})

wk.register({
	["<leader>"] = {
		a = {
			name = "+ Code Actions",
			c = { "<cmd>lua require('lspsaga.codeaction').code_action()", "Code Action (Range)" },
			s = { "<cmd>Strip Whitespace<CR>", "Strip Whitespace" },
		},
	},
}, { mode = "v", noremap = true })

return wk
