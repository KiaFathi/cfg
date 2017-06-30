" Plugins Start
call plug#begin('~/.vim/plugged')

" Color Scheme
Plug 'joshdick/onedark.vim'

" Plugins End
call plug#end()

" Avoid trying to conform to vi
set nocompatible              

" Filetype checking on
filetype on

" Set to auto read when a file is changed from the outside
set autoread

" Always show current position
set ruler

"Show line numbers
set number

"Set tabs to spaces 
set expandtab

" Set vspit to split right
set splitright

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" Searching starts after you enter the string
set incsearch

" cindent option is better than Vim auto indent
set cindent

" Show matching brackets when text indicator is over them
set showmatch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Syntax & Theme
syntax on
colorscheme onedark

" DISABLE ARROW KEYS
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
vnoremap <Up> <NOP>
vnoremap <Down> <NOP>
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>

" Visual mode related
" " Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Alternative Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
