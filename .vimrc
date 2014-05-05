" Bundle management

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle "gmarik/vundle"

Bundle "gmarik/snipmate.vim" 
Bundle "tpope/vim-surround"
Bundle "mattn/zencoding-vim"
Bundle "derekwyatt/vim-scala"
Bundle "vim-scripts/AutoComplPop"
Bundle "vim-scripts/ctrlp.vim"
Bundle "vim-scripts/template.vim"
Bundle "godlygeek/tabular"
Bundle 'wting/rust.vim'
Bundle 'mileszs/ack.vim'
Bundle 'tsaleh/vim-matchit'
Bundle 'groenewege/vim-less'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'yuratomo/neon.vim'
Bundle 'scrooloose/syntastic'
Bundle 'bitc/vim-hdevtools'

set wildignore+=*.class,*/target/*,*/node_modules/*,*/_cache/*,*/_site/*
"let g:ctrlp_prompt_mappings = {
"    \ 'AcceptSelection("e")': ['<c-t>'],
"    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
"    \ }
"
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces



if has("syntax")
  syntax on
endif

set background=dark

" colorscheme desert
if $TERM != "linux"
    " colorscheme molokai
    " colorscheme zenburn
    " colorscheme vitamins
    " colorscheme sunburst
    colorscheme neon
endif

" Display line numbers
set number

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

filetype plugin indent on


set showmatch
set ignorecase
set smartcase
set incsearch
set autowrite
" set mouse=a	

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Source bépo-specific mappings
source ~/.vimrc.bepo

set textwidth=78
set colorcolumn=+1
set formatoptions-=t "disable auto wrap

" Folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Disable help
map <F1> <Esc>
imap <F1> <Esc>

" Spell Check
map <F2> :set spelllang=en_us spell<cr>
map <F3> :set spelllang=fr spell<cr>
map <F4> :set nospell<cr>
map <F5> :set spell<cr>

imap <F2> <ESC>:set spelllang=en_us spell<cr>a
imap <F3> <ESC>:set spelllang=fr spell<cr>a
imap <F4> <ESC>:set nospell<cr>a
imap <F5> <ESC>:set spell<cr>a

" General configuration
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

" Refresh a file when modified from the outside
set autoread

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

set nobackup
set nowb
set noswapfile

set nohlsearch
 

autocmd insertEnter * set cursorline
autocmd insertLeave * set nocursorline
set list
set listchars=tab:>-,trail:·


let mapleader=","
noremap <Leader><Leader> <C-^>

noremap <silent> <F5> :checktime<cr>

map <silent> <Leader>t :Errors<CR>
map <Leader>s :SyntasticToggleMode<CR>

