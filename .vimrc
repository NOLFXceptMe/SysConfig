" Vim, not vi
set nocompatible

" Support syntax highlighting
syntax on

" detect filetype, use plugins and indentation
filetype plugin indent on

colorscheme evening

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

" Use a backup folder instead of writing to current working directory
set backup
set writebackup
set backupdir=~/.vim/backup/

" load pathogen
execute pathogen#infect()

" NERDTree plugin
map <C-n> :NERDTreeToggle<CR>

autocmd FileType json setlocal shiftwidth=2 tabstop=2
com! FormatJSON %!python -m json.tool

" Scala formatting
au BufEnter *.scala setl formatprg=java\ -jar\ /home/naveen/.vim/scalariform.jar\ -f\ -q\ +compactControlReadability\ +alignParameters\ +alignSingleLineCaseStatements\ +doubleIndentClassDeclaration\ +preserveDanglingCloseParenthesis\ +rewriteArrowSymbols\ +preserveSpaceBeforeArguments\ --stdin\ --stdout

" enable airline by default
set laststatus=2
