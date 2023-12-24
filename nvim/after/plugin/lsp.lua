local lsp_zero = require('lsp-zero')
lsp_zero.preset('recommended')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr, preserve_mappings = false})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	-- Replace the language servers listed here 
	-- with the ones you want to install
	ensure_installed = {'tsserver','eslint', 'rust_analyzer'},
	handlers = {
		lsp_zero.default_setup,
	},
})

lsp_zero.setup()
