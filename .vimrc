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

Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

Plug 'vim-airline/vim-airline'

Plug 'dense-analysis/ale'
let g:ale_c_parse_makefile = 1
let g:ale_python_mypy_options = '--ignore-missing-imports'      " avoid bug with venvs

Plug 'preservim/nerdtree'

Plug 'jpalardy/vim-slime'
let g:slime_target = 'kitty'
"let g:slime_default_config = {'socket_name': 'default', 'target_pane': '{last}'}
"let g:slime_dont_ask_default = 1

Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/doc/wiki/'}]
let g:vimwiki_global_ext = 0

Plug 'ledger/vim-ledger'

Plug 'ap/vim-css-color'

Plug 'lepture/vim-jinja'

Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
let g:vim_markdown_folding_disabled = 1

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'editorconfig/editorconfig-vim'

call plug#end()
