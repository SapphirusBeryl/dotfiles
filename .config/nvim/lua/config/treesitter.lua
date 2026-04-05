local ensureInstalled = {
    "bash",
    "c",
    "css",
    "diff",
    "gitcommit",
    "git_rebase",
    "html",
    "markdown",
    "ini",
    "javascript",
    "json",
    "python",
    "rust",
    "toml",
    "typescript",
    "yaml",
    "query",
}
local alreadyInstalled = require("nvim-treesitter.config").get_installed()
local parsersToInstall = vim.iter(ensureInstalled)
    :filter(function(parser)
        return not vim.tbl_contains(alreadyInstalled, parser)
    end)
    :totable()

require("nvim-treesitter").install(parsersToInstall)
require("treesitter-context").setup({
    enable = true,
    mode = "cursor", -- topline seems excessive
})

vim.api.nvim_create_autocmd("FileType", {
    callback = function(args)
        local args = args.buf
        local tree = vim.treesitter
        local lang = tree.language
        local type = lang.get_lang(vim.bo[args].filetype)

        if lang.add(type) then
            tree.start(args, type)
        end
    end,
})
vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
