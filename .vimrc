set nocompatible

syntax on
filetype plugin indent on
colorscheme evening

" Set UTF-8
set encoding=utf-8

" Display current command
set showcmd

" Search settings
set showmatch
set ignorecase smartcase
set hlsearch
set incsearch

" Show row, column
set ruler

" Show line numbers
set number

" Allows the backspace to delete indenting, end of lines, and over the start
" of insert
set backspace=indent,eol,start

" Command line completion
set wildmenu

set cc=80
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2

set history=9999

" Backups!
" See https://github.com/jdavis/dotfiles/blob/master/.vimrc#L174
set backup
set writebackup
set backupdir=~/.vim/backup/

execute pathogen#infect()

map <C-n> :NERDTreeToggle<CR>

autocmd FileType json setlocal shiftwidth=2 tabstop=2
com! FormatJSON %!python -m json.tool
