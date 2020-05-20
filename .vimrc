syntax on
set number
set showmatch
set tabstop=4
set autoindent
"" autocomplete quotes and parentheses
"" indent after if, for, while, etc.

"=================
" Plugin Manager
"=================

call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
let g:vimtex_view_method='zathura'

Plug 'tmsvg/pear-tree'

call plug#end()



