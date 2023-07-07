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
    -- Utility
    'nvim-tree/nvim-tree.lua',
    'nvim-treesitter/nvim-treesitter',
    'tpope/vim-fugitive',
    'tpope/vim-commentary',
    'tpope/vim-surround',
    'mbbill/undotree',

    -- dap
    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',

    -- themes & UI
    'Mofiqul/dracula.nvim',
    'nvim-tree/nvim-web-devicons',
    'nvim-lualine/lualine.nvim',
    'lewis6991/gitsigns.nvim',
    { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },

    -- completion
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    "rafamadriz/friendly-snippets",
    "github/copilot.vim",
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
    "williamboman/mason-lspconfig.nvim",
    "glepnir/lspsaga.nvim",
  {
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.2',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
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
        { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
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
