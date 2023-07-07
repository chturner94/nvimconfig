-- Navigate vim panes better
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

vim.keymap.set('n', '<leader>dt', ':DocsViewToggle<CR>')
vim.keymap.set('n', '<leader>df', ':DocsViewSearch<CR>')
vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>')
