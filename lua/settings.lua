vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')

-- Colors
vim.cmd('colorscheme ' .. O.colorscheme)
vim.cmd('hi EndOfBuffer guifg=bg')

vim.cmd('set noswapfile')

-- Auto Commands
vim.cmd('au BufRead,BufNewFile *.ex,*.exs set filetype=elixir')
vim.cmd('au BufRead,BufNewFile *.eex set filetype=eelixir')

-- Global Settings
vim.o.clipboard 	= 'unnamedplus'
vim.o.hidden = O.hidden_files -- to keep multiple buffers open
vim.o.guifont = O.gui_font
vim.o.numberwidth = 4
vim.o.pumheight = 10 -- makes popup menu smaller
vim.o.timeoutlen = 100 -- default timeoutlen is 1000 ms
vim.o.updatetime = 300 -- faster completion

-- Window Settings
vim.wo.cursorline = true -- enable highlighting of the current line
vim.wo.number = O.number -- set numbered lines
vim.wo.relativenumber = O.relative_number -- set relative number
vim.wo.signcolumn = "yes" -- always show the signcolumn, otherwise it would shift the text each time

-- Buffer Settins
vim.bo.expandtab = true -- converts tabs to spaces
vim.bo.smartindent = true -- makes indenting smart

vim.api.nvim_set_option('termguicolors', true)
vim.api.nvim_set_option('mouse', 'a')
vim.cmd('set guicursor=a:blinkon1')
vim.cmd('let g:onedark_termcolors=16')
vim.api.nvim_set_option('fileencoding', 'utf-8')
vim.api.nvim_set_option('splitright', true)
vim.api.nvim_set_option('ignorecase', true)
vim.api.nvim_set_option('smartcase', true)
vim.api.nvim_set_option('autoread', true)
vim.api.nvim_set_option('autowrite', true)
vim.api.nvim_set_option('incsearch', true)
vim.api.nvim_set_option('showcmd', true)
