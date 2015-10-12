" My newer vim config
" now using Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'flazz/vim-colorschemes'
Plugin 'mileszs/ack.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" 
" some favorite color schemes
" 
syntax on
"colorscheme koehler
"colorscheme abra
"colorscheme bensday
"colorscheme base16-atelierdune
"colorscheme herald
"colorscheme holokai
"colorscheme leo
colorscheme Monokai

filetype on
filetype plugin on
filetype indent on

set fileformat=unix
set fileformats=unix,dos

set number
set nowrap
set nobackup
set nowritebackup
set noswapfile
"set foldmethod=indent
set foldcolumn=1
set so=7
set backspace=indent,eol,start
set showcmd
set wildmenu
set wildignore+=*/target/*
set modelines=0

" tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" search
set incsearch
set hlsearch
set ignorecase
set smartcase

set laststatus=2
set linespace=4

set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%03v]\ [%p%%]\ [LEN=%L]

" comma is a nice leader
let mapleader=","

map! jj <esc>

nmap <leader>d :bn <bar> :bd#<CR>
nmap <leader>f zf
nmap <leader>w :w<CR>
nmap <leader>/ :nohlsearch<CR>
nmap <silent> <leader>t :NERDTreeToggle<CR>
nmap <silent> <space> za

map <silent> <C-h> :wincmd h<CR>
map <silent> <C-j> :wincmd j<CR>
map <silent> <C-k> :wincmd k<CR>
map <silent> <C-l> :wincmd l<CR>

" http://vimcasts.org/episodes/bubbling-text/
nmap <C-Up> ddkP
nmap <C-Down> ddp

" Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

" Source the vimrc file after saving it. This way, you don't have to reload
" Vim to see the changes.
if has("autocmd")
    autocmd BufWinLeave *.* mkview
    autocmd BufWinEnter *.* silent loadview 
    augroup myvimrchooks
        au!
        autocmd bufwritepost .vimrc source ~/.vimrc
    augroup END
endif

if has("transparency")
    set transparency=5
endif

"Helpful abbreviations
iab lorem Lorem ipsum dolor sit amet, consectetur adipisicing

" Make LESS files display with CSS syntax highlighting
au BufNewFile,BufRead *.less set filetype=css

" PHP syntax test (build)
map <C-B> :!php -l %<CR>
