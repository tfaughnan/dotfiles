syntax on
set showcmd
set number
set showmatch
set hlsearch
set incsearch
set tabstop=8
set shiftwidth=8
set softtabstop=0
set autoindent
set colorcolumn=80
set modeline
filetype plugin indent on

nnoremap <Up> <NOP>
inoremap <Up> <NOP>
nnoremap <Down> <NOP>
inoremap <Down> <NOP>
nnoremap <Left> <NOP>
inoremap <Left> <NOP>
nnoremap <Right> <NOP>
inoremap <Right> <NOP>

highlight ColorColumn ctermbg=black guibg=black
highlight TrailingWhitespace ctermbg=red guibg=red
match TrailingWhitespace /\s\+$/

autocmd FileType python nnoremap <leader>y :0,$!yapf<Cr>
autocmd FileType html setlocal et ts=2 sw=2
autocmd FileType css setlocal et ts=2 sw=2
autocmd FileType markdown setlocal et ts=4 sw=4
autocmd FileType c syn keyword cTodo contained TODO FIXME XXX BUG HACK NOTE NB
autocmd BufNewFile,BufRead *.h setfiletype c

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
let g:ale_echo_msg_format = '%linter% says %code%: %s'
let g:ale_c_parse_makefile = 1
let g:ale_python_mypy_options = '--ignore-missing-imports'
Plug 'preservim/nerdtree'
Plug 'jpalardy/vim-slime'
let g:slime_target = 'kitty'
Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/doc/wiki/'}]
let g:vimwiki_listsyms = ' .o~x'
let g:vimwiki_global_ext = 0
Plug 'ledger/vim-ledger'
Plug 'ap/vim-css-color'
Plug 'lepture/vim-jinja'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
let g:vim_markdown_folding_disabled = 1
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'editorconfig/editorconfig-vim'
Plug 'https://git.sr.ht/~sircmpwn/hare.vim'
Plug 'tikhomirov/vim-glsl'
call plug#end()
