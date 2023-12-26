local lsp_zero = require('lsp-zero')
local cmp = require('cmp')

lsp_zero.preset('recommended')

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr, preserve_mappings = false})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {'tsserver','eslint', 'rust_analyzer'},
    handlers = {
        lsp_zero.default_setup,
    },
})

lsp_zero.setup()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({select = true}),
  })
})
