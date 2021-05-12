local wk = require('config.plugins.which-key')

wk.register({
	['<TAB>'] =  {':BufferNext<CR>', 'Next Buffer'},
	['<S-TAB>'] = {':BufferPrevious<CR>', 'Previous Buffer'},
	['<A-1>'] = {':BufferGoto 1<CR>', 'Buffer 1'},
	['<A-2>'] = {':BufferGoto 2<CR>', 'Buffer 2'},
	['<A-3>'] = {':BufferGoto 3<CR>', 'Buffer 3'},
	['<A-4>'] = {':BufferGoto 4<CR>', 'Buffer 4'},
	['<A-5>'] = {':BufferGoto 5<CR>', 'Buffer 5'},
	['<A-6>'] = {':BufferGoto 6<CR>', 'Buffer 6'},
	['<A-7>'] = {':BufferGoto 7<CR>', 'Buffer 7'},
	['<A-8>'] = {':BufferGoto 8<CR>', 'Buffer 8'},
	['<A-9>'] = {':BufferGoto 9<CR>', 'Buffer 9'},
	['<A-0>'] = {':BufferLast<CR>', 'Last Buffer'},
})
