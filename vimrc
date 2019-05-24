" Vim config
set t_Co=256
set encoding=utf-8
set ttimeoutlen=10
set laststatus=2
set ignorecase

" Pathogen
execute pathogen#infect()

" Solarized
syntax enable
set background=dark
colorscheme candid

" Airline
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline_powerline_fonts=1

" NerdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeQuitOnOpen=1
noremap <C-m> :NERDTreeToggle<CR>

" Formatting
set number
"set list
"set listchars=trail:~

set tabstop=4
set shiftwidth=4
set expandtab
set backspace=2

set autoindent
set cindent

"set tags=/data/tags

if has('cscope')
    if has('quickfix')
        set cscopequickfix=s-,c-,d-,i-,t-,e-
    endif

    cnoreabbrev csa cs add
    cnoreabbrev csf cs find
    cnoreabbrev csk cs kill
    cnoreabbrev csr cs reset
    cnoreabbrev css cs show
    cnoreabbrev csh cs help

    command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
"    cs add $CSCOPE_DB

    set cscopetag cscopeverbose
endif