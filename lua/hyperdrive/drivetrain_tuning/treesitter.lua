require'nvim-treesitter.configs'.setup {
	ensure_installed = {"javascript", "c", "lua", "rust", "typescript" },

	sync_install = false,
	auto_install = true,
	hightlight = {
		enable = true,
	},
}
