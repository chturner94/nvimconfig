require("lualine").setup({
    options = {
        theme = 'auto',
    },
    sections = {
        lualine_x = {
            {
                require("lazy.status").updates,
                cond = require("lazy.status").has_updates,
            },
        },
    },
})
