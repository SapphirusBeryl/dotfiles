lua require('plugins')
lua require('telescope')
lua require('config.bindings')
lua require('config.telescope')
lua require('config.treesitter')
lua require('config.lsp')
lua require('config.editor')
lua require('config.theme')

set guicursor=
set autoindent 
set wildmode=longest,list
set laststatus=0
set clipboard+=unnamedplus
set background=dark
set number
set hidden
set title
set signcolumn=yes:1

filetype plugin on
filetype indent on

colorscheme carbonfox

hi Normal     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=none guifg=Grey
