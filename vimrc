" The good stuff is in the gvimrc file
" Just starting up pathogen here right now

execute pathogen#infect()
call pathogen#helptags()
call pathogen#incubate()

" PHP syntax test (build)
map <C-B> :!php -l %<CR>

" preserve folds
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview
