" .gvimrc File
" Curated by Chad Hicks
" A slowly growing collection of useful settings

" Pathogen!
call pathogen#incubate()
call pathogen#helptags()

set runtimepath+=~/.vim/bundle/ultisnips

" Enable filetypes
filetype on
filetype plugin on
filetype indent on

map! ;; <Esc> " map ;; to Esc

syntax on

" Display current cursor position in lower right corner
set ruler

if filereadable(expand("~/.gvimrc.before"))
  source ~/.gvimrc.before
endif

if filereadable(expand("~/.gvimrc.after"))
  source ~/.gvimrc.after
endif

" Don't show the tab bar
set guioptions-=T

" Set default colorscheme
colorscheme desert

" Font and size
set guifont=Courier:h14

set transparency=3
set lines=50
set columns=100
set cursorline
set number
set smartindent
set autoindent

" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4

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

