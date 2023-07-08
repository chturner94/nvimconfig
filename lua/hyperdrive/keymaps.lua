local opts = { noremap = true, silent = true }

-- Navigate vim panes better
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

vim.keymap.set('n', '<leader>dt', ':DocsViewToggle<CR>')
vim.keymap.set('n', '<leader>df', ':DocsViewSearch<CR>')
vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>')

-- Icon Picker
vim.keymap.set('n', '<leader><leader>i', '<cmd>IconPickerNormal<cr>', opts)
vim.keymap.set('n', '<leader><leader>y', '<cmd>IconPickerYank<cr>', opts)
vim.keymap.set('i', '<C-i>', '<cmd>IconPickerInsert<cr>', opts)
