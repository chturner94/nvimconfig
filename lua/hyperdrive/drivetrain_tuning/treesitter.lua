require'nvim-treesitter.configs'.setup {
	ensure_installed = {"javascript", "c", "lua", "rust", "typescript", "vimdoc", 
    "json", "html", "kotlin", "python", "bash", "css", "scss", "yaml" },
	sync_install = false,
	auto_install = true,
	hightlight = {
		enable = true,
	},
}
