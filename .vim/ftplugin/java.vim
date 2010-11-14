set omnifunc=javacomplete#Complete

" nombre d'espaces par tab
setlocal tabstop=4

" nombre de caractères utilisé pour l'indentation:
setlocal shiftwidth=4

" pour convertir les tabs en espaces
setlocal expandtab

" pour que backspace supprime 4 espaces:
setlocal softtabstop=4

" sur pression de la touche F3, highlight les caractères qui dépassent la 80ème colonne
map <silent> <F3> "<Esc>:match ErrorMsg '\%>80v.\+'<CR>"

" met en surbrillance les espaces et les tabs en trop
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t\|\t/
