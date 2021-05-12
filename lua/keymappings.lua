local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- <Space> is the new leader.
map('n', '<Space>', '<NOP>', { silent = true })
vim.cmd('nnoremap ; :')
vim.g.mapleader = ' '

vim.cmd('let g:tmux_navigator_no_mappings = 1')

map('n', '<C-h>', ':TmuxNavigateLeft<CR>', {silent=true})
map('n', '<C-l>', ':TmuxNavigateRight<CR>', {silent=true})
map('n', '<C-k>', ':TmuxNavigateUp<CR>', {silent=true})
map('n', '<C-j>', ':TmuxNavigateDown<CR>', {silent=true})
map('n', '<M-h>', ':TmuxNavigatePrevious<CR>', {silent=true})
