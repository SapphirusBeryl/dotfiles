vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>sy", vim.pack.update)
vim.keymap.set("n", "<leader>mf", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>u", "<Cmd>UndotreeToggle<CR>")
vim.keymap.set("n", "<leader>tu", "<Cmd>TSUpdate<CR>")
vim.keymap.set("n", "<leader>o", "<Cmd>Neotree<CR>")
vim.keymap.set("n", "<leader>t", "<Cmd>Neotree toggle<CR>")
vim.keymap.set("n", "<leader>p", "<Cmd>bp<CR>")
vim.keymap.set("n", "<leader>q", "<Cmd>bd<CR>")
vim.keymap.set("n", "<leader>l", "<Cmd>bl<CR>")
vim.keymap.set("n", "<leader>lb", "<Cmd>VGit toggle_live_blame<CR>")
vim.keymap.set("n", "<leader>bp", "<Cmd>VGit buffer_blame_preview<CR>")
