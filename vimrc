" My newer vim config
" now using Vundle
set nocompatible              " be iMproved, required
filetype on                  " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-vinegar'
"Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
"Plugin 'SirVer/ultisnips'
"Plugin 'ervandew/supertab'
"Plugin 'honza/vim-snippets'
Plugin 'flazz/vim-colorschemes'
Plugin 'daylerees/colour-schemes'
Plugin 'mileszs/ack.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'mkarmona/colorsbox'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kshenoy/vim-signature'      " toggle and navigate marks
Plugin 'joonty/vdebug'              " xdebug integration
Plugin 'airblade/vim-gitgutter'

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

" some favorite color schemes
" 
syntax on
" best on GUI
"colorscheme abbott
"colorscheme aiseered
"colorscheme darkside
"colorscheme koehler
"colorscheme abra
"colorscheme bensday
"colorscheme base16-atelierdune
"colorscheme breeze
"colorscheme 3dglasses

" good on terminal
colorscheme alduin
"colorscheme Benokai
"colorscheme herald
"colorscheme holokai
"colorscheme harlequin
"colorscheme CandyPaper
"colorscheme charon
"colorscheme skittles_berry
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
"set cursorcolumn
"set fu
set fileformat=unix
set fileformats=unix,dos
set relativenumber

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
set wildchar=<Tab> wildmenu wildmode=full
set wildignore+=*/target/*,*.so,*.swp,*.zip,*/bower_components/*,*/node_modules/*
set modelines=0
set viminfo='500,f1,<500

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

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:.
"set nolist

set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%03v]\ [%p%%]\ [LEN=%L]

" comma is a nice leader
let mapleader=","

" ctrlp settings
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:20,results:20'
let g:ctrlp_custom_ignore = {
    \ 'dir': 'node_modules\.git$\|_js\|log\|tmp$',
    \ 'file': '\.so$\|\.dat$\|\.DS_Store$'
    \ }

" config for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_sql_checkers = []
let g:syntastic_coffee_checkers = []


" config for xdebug
let g:vdebug_options = {
    \'break_on_open': 0,
    \'continuous_mode': 0,
    \'server': '192.168.33.99',
    \'port': 9000,
    \'path_maps':{'/var/www/html/acct':'/Users/chadhicks/Projects/Kipsu/ansible-playbooks/vagrant/kipsu_codebase'},
    \'timeout': 30,
    \'ide_key': 'vagrant',
    \'on_close': 'detach',
    \'debug_window_level': 0,
    \'watch_window_style': 'compact'}

" keymap time!
imap jj <esc>
nmap - ddp 
nmap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" word wrap at 80 chars
nmap <leader>wr :set formatoptions+=w<bar> set tw=80<CR>gggqG
nmap <leader>d :bn <bar> :bd#<CR>
nmap <C-tab> :bn<CR>
nmap <leader>x :bd<CR>
nmap <leader>f V/{<CR>%zf
nmap <leader>h :nohlsearch<CR>
nmap <leader>e :bn<CR>
nmap <leader>ex :vertical resize +50<CR>
nmap <silent> <leader>v :vsp $MYVIMRC<CR>
nmap <silent> <leader>td :vsp ~/todo.master.md<CR>
"nmap <silent> <leader>t :NERDTreeToggle<CR>
nmap <silent> <space> za

"nmap <D-1> :NERDTreeToggle<cr>
nmap <c-R> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>

" window navigation
map <silent> <C-h> :wincmd h<CR>
map <silent> <C-j> :wincmd j<CR>
map <silent> <C-k> :wincmd k<CR>
map <silent> <C-l> :wincmd l<CR>

map Y y$

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

if has("autocmd")
	"augroup viewpreservation
		"au BufWinLeave ?* mkview
		"au BufWinEnter ?* silent loadview 
	"augroup END
	"augroup vimstartup
		"autocmd VimEnter *.* source ~/mysession.vim
	"augroup END
    augroup autosourcing
        autocmd!
        autocmd bufwritepost .vimrc source %
    augroup END
endif

" If we have transparency, we're probably GUI
if !has("transparency")
    " iTerm2 cursor shapes
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"Helpful abbreviations
iab lorem Lorem ipsum dolor sit amet, consectetur adipisicing

" Make LESS files display with CSS syntax highlighting
au BufNewFile,BufRead *.less set filetype=css

"au BufNewFile,BufRead *.coffee set noexpandtab

" PHP syntax test (build)
map <C-B> :!php -l %<CR>
