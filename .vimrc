" Vim, not vi
set nocompatible

" Support syntax highlighting
syntax on

" detect filetype, use plugins and indentation
filetype plugin indent on

set t_Co=256
colorscheme zenburn

" Set UTF-8
set encoding=utf-8

" Display current command
set showcmd

" Show matching parenthesis
set showmatch

" Search settings
set ignorecase smartcase
set hlsearch
set incsearch

" manage tabs
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab

" Show row, column
set ruler

" Show line numbers
set number

" Allows the backspace to delete indenting, end of lines, and over the start
" of insert
set backspace=indent,eol,start

" Command line completion
set wildmenu

" 80 character
set cc=80

" Remember : commands
set history=100

" load pathogen
execute pathogen#infect()

autocmd FileType json setlocal shiftwidth=2 tabstop=2
com! FormatJSON %!python -m json.tool

" enable airline by default
set laststatus=2

" Open NERDTree if Vim is opened without an argument
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Ctrl-N toggles NERDTree window
map <C-n> :NERDTreeToggle<CR>

