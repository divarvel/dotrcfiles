if has("syntax")
  syntax on
endif

set background=dark

colorscheme desert
if $TERM != "linux"
    " colorscheme molokai
    " colorscheme zenburn
    colorscheme vitamins
    " colorscheme sunburst
endif

" Display line numbers
set number

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif


set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Source bépo-specific mappings
source ~/.vimrc.bepo

set textwidth=78

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
