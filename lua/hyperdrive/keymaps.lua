local opts = { noremap = true, silent = true }
local tele_builtin = require('telescope.builtin')

-- Navigate vim panes better
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>td', '<Cmd>DocsViewToggle<CR>')
vim.keymap.set('n', '<leader>u', '<Cmd>UndotreeToggle<CR>')

-- Icon Picker
vim.keymap.set('n', '<leader><leader>i', '<cmd>IconPickerNormal<cr>', opts)
vim.keymap.set('n', '<leader><leader>y', '<cmd>IconPickerYank<cr>', opts)
vim.keymap.set('i', '<A-i>', '<cmd>IconPickerInsert<cr>', opts)


-- Telescope
vim.keymap.set('n', '<leader>ff', tele_builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', tele_builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', tele_builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', tele_builtin.help_tags, {})
vim.keymap.set('n', '<leader>fo', tele_builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fk', tele_builtin.keymaps, {})
vim.keymap.set('n', '<leader>ft', '<Cmd>Telescope<CR>', {})
-- LSP Telescope
vim.keymap.set('n', 'fll', tele_builtin.lsp_document_symbols, {})
vim.keymap.set('n', 'flw', tele_builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', 'flt', tele_builtin.lsp_type_definitions, {})
vim.keymap.set('n', 'flr', tele_builtin.lsp_references, {})
vim.keymap.set('n', 'fli', tele_builtin.lsp_implementations, {})
vim.keymap.set('n', 'flc', tele_builtin.lsp_outgoing_calls, {})
vim.keymap.set('n', 'flC', tele_builtin.lsp_incoming_calls, {})
vim.keymap.set('n', 'flD', tele_builtin.lsp_definitions, {})

-- NeoTree
vim.keymap.set('n', '<leader>tt', '<Cmd>Neotree toggle<CR>')

-- Harpoon
vim.keymap.set('n', '<leader>hh', '<Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>')
vim.keymap.set('n', '<leader>ha', '<Cmd>lua require("harpoon.mark").add_file()<CR>')
vim.keymap.set('n', '<leader>h1', '<Cmd>lua require("harpoon.ui").nav_file(1)<CR>')
vim.keymap.set('n', '<leader>h2', '<Cmd>lua require("harpoon.ui").nav_file(2)<CR>')
vim.keymap.set('n', '<leader>h3', '<Cmd>lua require("harpoon.ui").nav_file(3)<CR>')
vim.keymap.set('n', '<leader>h4', '<Cmd>lua require("harpoon.ui").nav_file(4)<CR>')
vim.keymap.set('n', '<leader>h5', '<Cmd>lua require("harpoon.ui").nav_file(5)<CR>')

-- Workspaces
vim.keymap.set("n", "<leader>fp", function() vim.cmd("Telescope projections") end)
