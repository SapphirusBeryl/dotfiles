lsp.config("rust_analyzer", {
    capabilities = cmp_defcaps,
    cmd = { "lspmux" },
    settings = {
        ["rust-analyzer"] = {
            diagnostics = {
                enable = true;
            },
            completion = {
                callable = {
                    snippets = "add_parentheses",
                },
            },
            rustfmt = {
                extraArgs = { "+nightly" };
            }
        }
    }
})
lsp.enable("rust_analyzer")
