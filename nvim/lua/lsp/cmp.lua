local cmp = require('cmp')
local sneng = require(snippet_engine)

cmp.setup({
    snippet = {
      expand = function(args)
        sneng.lsp_expand(args.body)
      end,
    },
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.scroll_docs(-4),
        ['<C-n>'] = cmp.mapping.scroll_docs(4),
		['<tab>'] = cmp.mapping.confirm({ select = true }),
		['<C-space>'] = cmp.mapping.complete(),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'nvim_lsp_signature_help' },
        { name = sneng_name },
    })
})
