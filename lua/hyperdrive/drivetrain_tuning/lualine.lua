require("lualine").setup({
  options = {
    theme = 'dracula-nvim'
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
