local lsp = require("lsp-zero")
local git = require("vgit")
local sig = require("lsp_signature")
local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()

lsp.preset("recommended")

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {'rust_analyzer'},
	handlers = {
		lsp.default_setup,
	},
})

cmp.setup({
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		['<C-p>'] = cmp_action.luasnip_jump_backward(),
		['<C-n>'] = cmp_action.luasnip_jump_forward(),
		['<tab>'] = cmp.mapping.confirm({ select = true }),
		['<C-space>'] = cmp.mapping.complete(),
	})
})

lsp.set_preferences({
	sign_icons = { }
})

lsp.set_sign_icons({
  error = '',
  warn = '',
  hint = '',
  info = '',
})

lsp.on_attach(function(client, bufnr) 
	local opts = {buffer = bufnr, remap = false}

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lps.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.diagnostic.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.diagnostic.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.diagnostic.rename() end, opts)
	vim.keymap.set("n", "<C-h>", function() vim.diagnostic.signature_help() end, opts)
end)


lsp.setup()
-- sig.setup({
--    hint_enable = false,
--    fix_pos = ,
--    always_trigger = true,
--    handler_opts = {
--        border = "rounded"   -- double, rounded, single, shadow, none, or a table of borders
--    },
--})
git.setup({
    settings = {
        signs = {
            priority = 0,
        },
    }
})
