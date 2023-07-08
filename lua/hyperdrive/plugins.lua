local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
    -- Libraries
    'nvim-lua/plenary.nvim',
    'nvim-lua/popup.nvim',
    'stevearc/dressing.nvim',
    -- Utility
    'nvim-tree/nvim-tree.lua',
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    'tpope/vim-fugitive',
    'tpope/vim-commentary',
    'tpope/vim-surround',
    'mbbill/undotree',
    'nikvdp/neomux',
    {
        'ziontee113/icon-picker.nvim',
        config = function()
            require('icon-picker').setup({
                disable_legacy_commands = true,
            })
        end,
    },
    {
        'sudormrfbin/cheatsheet.nvim',
        dependencies = {
            'nvim-telescope/telescope.nvim',
            'nvim-lua/popup.nvim',
            'nvim-lua/plenary.nvim',
        },
    },

    -- dap
    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',

    -- notes & docs
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("neorg").setup {
                load = {
                    ["core.defaults"] = {},  -- Loads default behaviour
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
        end,
    },
    -- themes & UI
    'Mofiqul/dracula.nvim',
    'nvim-tree/nvim-web-devicons',
    'nvim-lualine/lualine.nvim',
    'lewis6991/gitsigns.nvim',
    { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
            -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
            -- animation = true,
            -- insert_at_start = true,
            -- …etc.
        },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
    },

    -- completion
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
    "williamboman/mason-lspconfig.nvim",
    'hrsh7th/nvim-cmp',
    "glepnir/lspsaga.nvim",
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    "rafamadriz/friendly-snippets",
    "github/copilot.vim",
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },

    -- more complex configs
    -- Which Key
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
    },
    {
        'ray-x/navigator.lua',
        requires = {
            { 'ray-x/guihua.lua',     run = 'cd lua/fzy && make' },
            { 'neovim/nvim-lspconfig' },
        },
    },
    {
        "amrbashir/nvim-docs-view",
        opt = true,
        cmd = { "DocsViewToggle" },
    },

}

local opts = {

}





require("lazy").setup(plugins, opts)
