local lsp = require('lsp-zero').preset({})

lsp.ensure_installed({
	'bashls',
	'kotlin_language_server',
	'dockerls',
	'docker_compose_language_service',
	'gradle_ls',
	'grammarly',
	'marksman',
	'spectral',
	'powershell_es',
	'jedi_language_server',
	'sqlls',
	'terraformls',
	'graphql',
	'cmake',
	'cssls',
	'html',
	'jsonls',
	'pyright',
	'rust_analyzer',
	'svelte',
	'tsserver'
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete(),
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)




lsp.setup()
