lua require("plugins")
lua require("config")

set spell spelllang=en_ca

set guicursor=a:hor20
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

hi Normal       ctermbg=NONE guibg=NONE guifg=#e2e2e2
hi NormalFloat  ctermbg=NONE guibg=NONE guifg=#dedede
hi Pmenu        ctermbg=NONE guibg=NONE guifg=#a7a7a7
hi SignColumn   ctermbg=NONE guibg=NONE guifg=Grey
hi LineNr       ctermbg=NONE guibg=NONE guifg=Grey
