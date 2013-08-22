" .gvimrc File
" Collected by Chad Hicks
" A slowly growing collection of useful settings

" Pathogen!
call pathogen#incubate()
call pathogen#helptags()

" Add in UltiSnips
set runtimepath+=~/.vim/bundle/ultisnips

" Enable filetypes
filetype on
filetype plugin on
filetype indent on

" Reaching for esc is dumb; map ;; to Esc
map! ;; <Esc> 

" Linebreak at 500 char
"set lbr
"set tw=500

" Full screen!
" set fu

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Auto indent
set ai

" Give the cursor 7 lines of space
set so=7

syntax on

" Display current cursor position in lower right corner
set ruler

" Don't show the tab bar
set guioptions-=T

" Set default colorscheme
colorscheme badwolf

" Font and size
set guifont=Courier:h14

set transparency=2
set lines=50
set columns=150
set foldcolumn=1
set cursorline
set number
set smartindent
set autoindent

" Tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Search settings
set incsearch
set hlsearch
set ignorecase
set smartcase

" Show command in bottom right
set showcmd

" More status line info
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]

" Always show the status line at the bottom
set laststatus=2
" More space between lines
set linespace=3

" Make LESS files display with CSS syntax highlighting
au BufNewFile,BufRead *.less set filetype=css

