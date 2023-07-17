local opts = { noremap = true, silent = true }
require('bufresize').setup({
    register = {
        keys = {
            { 'n', '<C-w><', '30<C-w><',     opts },
            { 'n', '<C-w>>', '30<C-w>>',     opts },
            { 'n', '<C-w>',  '10<C-w>+',     opts },
            { 'n', '<C-w>-', '10<C-w>-',     opts },
            { 'n', '<C-w>_', '<C-w>_',       opts },
            { 'n', '<C-w>=', '<C-w>=',       opts },
            { 'n', '<C-w>|', '<C-w>|',       opts },
            { 'n', '<C-w>o', '<C-w>|<c-w>_', opts },
        },
        trigger_events = { 'BufWinEnter', "WinEnter" },
    },
    resize = {
        keys = {},
        trigger_events = { 'vimResized' },
        increment = 5,
    },
})
