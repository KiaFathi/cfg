" Plugins Start
call plug#begin('~/.vim/plugged')

" Filesystem Navigation
Plug 'scrooloose/nerdtree'

" Language Recognition
Plug 'sheerun/vim-polyglot'

" Easy Commenting
Plug 'tpope/vim-commentary'

" Vim Surround
Plug 'tpope/vim-surround'

" Git Gutter
Plug 'airblade/vim-gitgutter'

" File Linting
Plug 'w0rp/ale'

" Color Scheme
Plug 'joshdick/onedark.vim'

" Language Support
Plug 'plasticboy/vim-markdown'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

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

" Clipboard Setup
set clipboard+=unnamedplus

" Syntax & Theme
syntax on
colorscheme onedark

" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Plugin Configuration
" vim-jsx 
let g:jsx_ext_required = 0

" vim-markdown configuration
let g:vim_markdown_folding_disabled = 1

" NerdTree 
let NERDTreeShowHidden=1

" Ale 
let g:ale_open_list = 1
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5'

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
