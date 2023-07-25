require('telescope').load_extension('frecency')


require('telescope').setup {
    defaults = {
        shorten_path = true,
        winblend = 0,
        width = 0.75,
        preview_cutoff = 120,
        results_height = 1,
        results_width = 0.8,
        border = {},
        borderchars = {
            '─', '│', '─', '│', '╭', '╮', '╯', '╰',
        },
        color_devicons = true,
    },
    extensions = {
        fzf = {
            fuzzy = true,                   -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true,    -- override the file sorter
            case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        },
        file_browser = {
            hijack_netrw = false,
        },
    },
}

require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')
require "telescope".load_extension("frecency")
