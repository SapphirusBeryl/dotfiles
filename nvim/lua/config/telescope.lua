local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})

require('telescope').setup{ 
  defaults = { 
    file_ignore_patterns = { 
      "target",
      "dist/runtime",
      "dist/filesystem",
    }
  }
}
