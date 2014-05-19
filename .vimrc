syntax on
filetype plugin indent on
colorscheme evening

set autoindent
set incsearch
set ruler
set wildmenu
set tabstop=4
set shiftwidth=4

execute pathogen#infect()

map <C-n> :NERDTreeToggle<CR>

autocmd FileType json setlocal shiftwidth=2 tabstop=2
com! FormatJSON %!python -m json.tool
