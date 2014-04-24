set wildignore+=*/cabal-dev/*,*.hi,*.o

let g:syntastic_auto_loc_list=1
nnoremap <buffer> <silent> <leader>e :HdevtoolsType<CR>
nnoremap <buffer> <silent> <leader>a :HdevtoolsClear<CR>
nnoremap <buffer> <silent> <leader>i :HdevtoolsInfo<CR>

let g:syntastic_haskell_checkers = ['hdevtools', 'scan']

map <silent> <leader>% :let g:syntastic_haskell_checkers = ['hdevtools', 'scan']<CR>
map <silent> <leader>= :let g:syntastic_haskell_checkers = ['hdevtools', 'hlint', 'scan']<CR>
