lsp = vim.lsp
lsp_config = require("lspconfig")
cmp_defcaps = require("blink.cmp").get_lsp_capabilities()

snippet_engine = "luasnip"

vim.opt.completeopt = {
    "menu",
    "menuone",
    "noselect"
}
vim.diagnostic.config({
    signs = { 
        text = { 
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "",
            [vim.diagnostic.severity.HINT] = "",
            [vim.diagnostic.severity.INFO] = "",
        },
    },
    virtual_text = true,
    severity_sort = true,
})

require("lsp.mason")
require("lsp.cmp")
require("lsp.pylsp")
require("lsp.rust")
require("lsp.git")
