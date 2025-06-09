lsp.config('rust_analyzer', {
    capabilities = cmp_defcaps,
    settings = {
        ['rust-analyzer'] = {
            diagnostics = {
                enable = true;
            }
        }
    }
})
lsp.enable('rust_analyzer')
