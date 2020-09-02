syntax on           "syntax highlighting
set showcmd         "show command input on last line
set number          "line numbers
set showmatch       "briefly highlight matching braces/parentheses
set hlsearch        "highlight search results
set incsearch       "show incremental results while typing query

set tabstop=4       "display \t with width 4
set shiftwidth=4    "display indents with width 4 (e.g., on lines after a { character in C)
set softtabstop=0   "turn off feature that inserts a mix of \t and spaces to achieve a desired width when pressing tab key
set expandtab       "pressing tab key inserts # spaces == tabstop (instead of a \t)
set autoindent      "indent new line if previous line is indented

filetype plugin indent on   "detect filetype and apply any specific settings
set modeline                "apply any modeline settings in individual files

"for some reason, vim doesn't automatically detect
"appropriate bg color when TERM=screen-256color
if exists("$TMUX")
    set background=dark
endif

"disable arrow keys to discourage bad habits
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
let g:tex_flavor = 'latex'

"Plug 'tmsvg/pear-tree'

call plug#end()



