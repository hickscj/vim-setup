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

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
"Plugin 'honza/vim-snippets'
Plugin 'flazz/vim-colorschemes'
Plugin 'mileszs/ack.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'bling/vim-airline'
Plugin 'mkarmona/colorsbox'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kshenoy/vim-signature'      " toggle and navigate marks
Plugin 'joonty/vdebug'              " xdebug integration
Plugin 'airblade/vim-gitgutter'
"Plugin 'brookhong/DBGPavim'

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
" best on GUI
"colorscheme koehler
"colorscheme abra
"colorscheme bensday
"colorscheme base16-atelierdune

" good on terminal
"colorscheme herald
"colorscheme holokai
"colorscheme harlequin
colorscheme skittles_berry
"colorscheme leo
"colorscheme Monokai
"colorscheme ChocolateLiquor
"colorscheme colorsbox-stbright
"colorscheme badwolf
"colorscheme vibrantink

filetype on
filetype plugin on
filetype indent on

set cursorline
set fileformat=unix
set fileformats=unix,dos
"set relativenumber

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
set wildignore+=*/target/*,*.so,*.swp,*.zip,*/bower_components/*,*/node_modules/*
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
set linespace=2

set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%03v]\ [%p%%]\ [LEN=%L]

" comma is a nice leader
let mapleader=","

" ctrlp settings
let g:ctrlp_working_path_mode = 'ra'

" config for DBGPavim
"let g:dbgPavimPort=9000
"let g:dbgPavimBreakAtEntry=0


" config for Vdebug
let g:vdebug_options = {
            \'break_on_open': 0,
            \'continuous_mode': 0,
            \'ide_key': '',
            \'server': 'localhost',
            \'timeout': 60,
            \'port' : 9001,
            \'watch_window_style': 'compact'}

map! jj <esc>

nmap <leader>d :bn <bar> :bd#<CR>
nmap <leader>f V/{<CR>%zf
nmap <leader>w :w<CR>
nmap <leader>h :nohlsearch<CR>
nmap <leader>e :bn<CR>
nmap <silent> <leader>t :NERDTreeToggle<CR>
nmap <silent> <leader>v :vsp ~/.vimrc<CR>
nmap <silent> <space> za

map <silent> <C-h> :wincmd h<CR>
map <silent> <C-j> :wincmd j<CR>
map <silent> <C-k> :wincmd k<CR>
map <silent> <C-l> :wincmd l<CR>

" YouCompleteMe and UltiSnips compatibility, with the helper of supertab
" (via http://stackoverflow.com/a/22253548/1626737)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Source the vimrc file after saving it. This way, you don't have to reload
" Vim to see the changes.
if has("autocmd")
    "autocmd BufWinLeave *.* mkview
    "autocmd BufWinEnter *.* silent loadview 
    augroup myvimrchooks
        au!
        autocmd bufwritepost .vimrc source ~/.vimrc
    augroup END
endif

" If we have transparency, we're probably GUI
if has("transparency")
    set transparency=9
    "set guifont=Hack-Regular:h13
    "set guifont=Anonymice\ Powerline:h15
    set guifont=Inconsolata\ for\ Powerline:h15
    "set guifont=Fira\ Mono\ Medium\ for\ Powerline:h13
    let g:airline_powerline_fonts = 1
    " Enable the list of buffers
    let g:airline_extensions_tabline_enabled = 1
    " Show just the filename
    let g:airline_extensions_tabline_fnamemod = ':t'
else
    " iTerm2 cursor shapes
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"Helpful abbreviations
iab lorem Lorem ipsum dolor sit amet, consectetur adipisicing

" Make LESS files display with CSS syntax highlighting
au BufNewFile,BufRead *.less set filetype=css

au BufNewFile,BufRead *.coffee set noexpandtab

" PHP syntax test (build)
map <C-B> :!php -l %<CR>
