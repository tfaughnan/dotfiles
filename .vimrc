syntax on
set showcmd
set number
set showmatch
set hlsearch
set incsearch
set tabstop=4
set shiftwidth=4
set autoindent

nnoremap <Up> <NOP>
inoremap <Up> <NOP>
nnoremap <Down> <NOP>
inoremap <Down> <NOP>
nnoremap <Left> <NOP>
inoremap <Left> <NOP>
nnoremap <Right> <NOP>
inoremap <Right> <NOP>

"=================
" Plugin Manager
"=================

call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
let g:vimtex_view_method='zathura'

"Plug 'tmsvg/pear-tree'

call plug#end()



