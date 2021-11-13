require('which-key').setup {
	plugins = {
		presets = {
			-- adds help for operators like d, y, ...
			-- and registers them for motion / text object completion
			operators = false,
		}
	},
	sort_keys = false
}

local wk = require('which-key')

wk.register({
	['<leader>'] = {
		e = {':NvimTreeToggle<cr>', 'Toggle Explorer'},
		E = {
			name = '+ Explorer',
			a = {':let g:nvim_tree_quit_on_open=1<CR>', 'Enable Auto Close On Open'},
			A = {':let g:nvim_tree_quit_on_open=0<CR>', 'Disable Auto Close On Open'},
		},
		['!'] = {'<cmd>Telescope command_history<CR>', 'Command History'},
		k = {"<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>", 'Documentation'},
		c = {
			name = '+ Configuration',
			['<C-s>'] = {'<cmd>Telescope colorscheme<CR>', 'Pick Color Scheme'},
		},
		b = {
			name = '+ Buffer',
			r = {'<cmd>Telescope buffers<cr>', 'List Buffers'},
			m = {
				name = '+ Move Buffer',
				[','] = {':BufferMovePrevious<CR>', 'Move Buffer Left'},
				['.'] = {':BufferMoveNext<CR>', 'Move Buffer Right'},
			},
			d = {'<cmd>TroubleToggle lsp_document_diagnostics<CR>', 'Diagnostics'},
			s = {':StripWhitespace<CR>', 'Strip Whitespace'},
			w = {':BufferClose<CR>', 'Close Buffer'},
			W = {':BufferCloseAllButCurrent<CR>', 'Close All Other Buffers'},
		},
		w = {
			name = '+ Workspace',
			d = {'<cmd>TroubleToggle lsp_workspace_diagnostics<CR>', 'Diagnostics'},
		},
		f = {
			name = '+ File',
			f = {'<cmd>Telescope find_files<CR>', 'Find'},
			r = {'<cmd>Telescope oldfiles<CR>', 'Recent'},
			g = {'<cmd>Telescope live_grep<CR>', 'Grep'},
			n = {'<cmd>enew<cr>', 'New File'},
		},
		l = {
			name = '+ LSP',
			i = {':LspInfo<CR>', 'LSP Info'},
			d = {"<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>", 'Definition'},
			e = {'<cmd>Telescope lsp_range_code_actions<CR>', 'Code Actions'},
		},
		g = {
			name = '+ Git',
			l = {':LazyGit<CR>', 'Lazy Git'},
			c = {'<cmd>Telescope git_commits<CR>', 'Commits'},
			['<C-c>'] = {'<cmd>Telescope git_bcommits<CR>', 'Commits (Buffer)'},
			s = {'<cmd>Telescope git_status<CR>', 'Status'},
			b = {'<cmd>Telescope git_branches<CR>', 'Branches'}
		},
		s = {
		  name = '+ Search',
			s = {'g#', 'Search Forward'},
			b = {'g*', 'Search Backward'},
			c = {":let @/ = ''<CR>", 'Clear Last Search'},
			h = {'<cmd>Telescope search_history<CR>', 'Search History'},
		},
	}
})

wk.register({
	['<leader>lcr'] = {"<cmd>lua require('lspsaga.codeaction').code_action()", 'Code Action (Range)'},
}, { mode = 'v'})

return wk
