local neotree = require("neo-tree")
require("neorg").setup {
    load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.keybinds"] = {
            config = {
                hook = function(keybinds)
                    keybinds.map("norg", "n", "<leader>cb",
                        "<cmd>:Neorg keybind all core.looking-glass.magnify-code-block<CR>")
                    keybinds.map("norg", "n", "<leader>nf",
                        "<cmd>:Neotree dir=~/notes<CR>")
                end,
            }
        },
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.dirman"] = {      -- Manages Neorg workspaces
            config = {
                workspaces = {
                    home = "~/notes/home",
                    school = "~/notes/school",
                    work = "~/notes/work",
                    development = "~/notes/development",
                },
            },
        },
    },
}
