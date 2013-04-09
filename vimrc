" The good stuff is in the gvimrc file
" Just starting up pathogen here right now

execute pathogen#infect()

" PHP syntax test (build)
map <C-B> :!php -l %<CR>
