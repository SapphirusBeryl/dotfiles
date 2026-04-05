nospell_types = {
    "confini",
}

vim.api.nvim_create_autocmd("FileType", {
    pattern = nospell_types,
    callback = function()
        vim.cmd("set nospell")
    end,
})
