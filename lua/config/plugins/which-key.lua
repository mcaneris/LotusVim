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
		e = {':NvimTreeToggle<cr>', 'Tree Toggle'},
		k = {"<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>", 'Documentation'},
		b = {
			name = '+ Buffer',
			r = {'<cmd>Telescope buffers<cr>', 'List Buffers'},
			m = {
				name = '+ Move Buffer',
				[','] = {':BufferMovePrevious<CR>', 'Move Buffer Left'},
				['.'] = {':BufferMoveNext<CR>', 'Move Buffer Right'},
			},
			s = {':StripWhitespace<CR>', 'Strip Whitespace'},
			w = {':BufferClose<CR>', 'Close Buffer'},
			W = {':BufferCloseAllButCurrent<CR>', 'Close All Other Buffers'},
		},
		f = {
			name = '+ File',
			f = {'<cmd>Telescope find_files<cr>', 'Find'},
			r = {'<cmd>Telescope oldfiles<cr>', 'Recent'},
			n = {'<cmd>enew<cr>', 'New File'},
		},
		l = {
			name = '+ LSP',
			d = {"<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>", 'Definition'},
			c = {
				name = '+Code Action',
				a = {"<cmd>lua require('lspsaga.codeaction').code_action()", 'Code Action'},
			},
			x = {':LspTroubleToggle<cr>', 'LSP Trouble'}
		},
		s = {
		  name = '+ Search',
			s = {'g#', 'Search Forward'},
			b = {'g*', 'Search Backward'},
			c = {":let @/ = ''<CR>", 'Clear Last Search'}
		},
	}
})

wk.register({
	['<leader>lcr'] = {"<cmd>lua require('lspsaga.codeaction').code_action()", 'Code Action (Range)'},
}, { mode = 'v'})

return wk
