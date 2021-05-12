local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<Space>', '<NOP>', { silent = true })
vim.g.mapleader = ' '

-- better window movement
vim.api.nvim_set_keymap('n', '<M-h>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<M-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<M-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<M-l>', '<C-w>l', {silent = true})
