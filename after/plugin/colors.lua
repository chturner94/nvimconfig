function ColorOverride(color)
	color = color or "dracula"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "normal", { bg = "#17161D" })
	vim.api.nvim_set_hl(0, "normalFloat", { bg = "#17161D" })
end




ColorOverride()
