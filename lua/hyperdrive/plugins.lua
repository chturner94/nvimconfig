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
    'MunifTanjim/nui.nvim',
    {
        's1n7ax/nvim-window-picker',
        name = 'window-picker',
        event = 'VeryLazy',
        version = '2.*',
        config = function()
            require 'window-picker'.setup()
        end,
    },
    -- themes & UI
    {
        'dracula_pro',
        lazy = false,
        dir = '~/.config/dracula_pro',
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme dracula_pro]])
        end,
    },
    'nvim-tree/nvim-web-devicons',
    'nvim-lualine/lualine.nvim',
    'lewis6991/gitsigns.nvim',
    -- Guihua
    {
        'ray-x/guihua.lua',
        run = 'cd lua/fzy && make'
    },
    -- Barbar
    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
            -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
            animation = true,
            insert_at_start = true,
            -- …etc.
        },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
    },

    -- Utility
    -- NeoTree
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    'tpope/vim-fugitive',
    'tpope/vim-commentary',
    'tpope/vim-surround',
    'ThePrimeagen/harpoon',
    'mbbill/undotree',
    'nikvdp/neomux',
    -- Icon Picker
    {
        'ziontee113/icon-picker.nvim',
        config = function()
            require('icon-picker').setup({
                disable_legacy_commands = true,
            })
        end,
    },
    -- Cheat Sheet
    {
        'sudormrfbin/cheatsheet.nvim',
        dependencies = {
            'nvim-telescope/telescope.nvim',
            'nvim-lua/popup.nvim',
            'nvim-lua/plenary.nvim',
        },
    },
    -- bufresize
    'kwkarlwang/bufresize.nvim',

    -- dap
    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',

    -- notes & docs

    -- Neorg
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    -- LSP & Completion
    {
        'vonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            'neovim/nvim-lspconfig',
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',

            -- AutoCompletion
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',

            -- snippets
            {
                'L3MON4D3/LuaSnip',
                dependencies = "rafamadriz/friendly-snippets",
            },
        },
    },
    {
        "ray-x/go.nvim",
        dependencies = { -- optional packages
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("go").setup()
        end,
        event = { "CmdlineEnter" },
        ft = { "go", 'gomod' },
        build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    },
    {
        'folke/trouble.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
    },

    -- completion
    "github/copilot.vim",
    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },
    {
        'nvim-telescope/telescope-file-browser.nvim',
        dependencies = {
            'nvim-telescope/telescope.nvim',
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
        },

    },
    'nvim-telescope/telescope-ui-select.nvim',
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
    },
    {
        'nvim-telescope/telescope-frecency.nvim',
        dependencies = {
            'kkharji/sqlite.lua',
            'nvim-tree/nvim-web-devicons',
        },
    },
    'folke/neoconf.nvim',

    -- Which Key
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {},
    },
    {
        'ray-x/navigator.lua',
        dependencies = {
            { 'ray-x/guihua.lua',     build = 'cd lua/fzy && make' },
            { 'neovim/nvim-lspconfig' },
        },
    },
    {
        "amrbashir/nvim-docs-view",
        cmd = { "DocsViewToggle" },
    },
    -- editor plugins
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        opts = {},
    },
    'ethanholz/nvim-lastplace',

}

local opts = {

}





require("lazy").setup(plugins, opts)
