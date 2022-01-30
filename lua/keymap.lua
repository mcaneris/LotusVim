local function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- <Space> is the new leader.
map("n", "<Space>", "<NOP>", { silent = true })
vim.cmd("nnoremap ; :")
vim.g.mapleader = " "

--[[
-- Following is keymap configuration for the `folke/which-key.nvim`. Lotus
-- VIM prechecks `folke/which-key` is installed prio to appyling the
-- configuration.
]]

local wk = Lotus.Utils.prequire("which-key")

if wk then
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
				t = { "<cmd>Telescope treesitter<CR>", "Treesitter" },
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
				o = { ":Octo<CR>", "Octo" },
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

	wk.register({
		["<TAB>"] = { ":BufferNext<CR>", "Next Buffer" },
		["<S-TAB>"] = { ":BufferPrevious<CR>", "Previous Buffer" },
		["<A-1>"] = { ":BufferGoto 1<CR>", "Buffer 1" },
		["<A-2>"] = { ":BufferGoto 2<CR>", "Buffer 2" },
		["<A-3>"] = { ":BufferGoto 3<CR>", "Buffer 3" },
		["<A-4>"] = { ":BufferGoto 4<CR>", "Buffer 4" },
		["<A-5>"] = { ":BufferGoto 5<CR>", "Buffer 5" },
		["<A-6>"] = { ":BufferGoto 6<CR>", "Buffer 6" },
		["<A-7>"] = { ":BufferGoto 7<CR>", "Buffer 7" },
		["<A-8>"] = { ":BufferGoto 8<CR>", "Buffer 8" },
		["<A-9>"] = { ":BufferGoto 9<CR>", "Buffer 9" },
		["<A-0>"] = { ":BufferLast<CR>", "Last Buffer" },
	})
end
