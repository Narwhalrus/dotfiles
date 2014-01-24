" Colors
syntax on               " enable syntax highlighting
colo desert             " weeeee!!

" Spaces and tabs
set expandtab           " tabs are spaces
set softtabstop=4       " 4 space tab 
set shiftwidth=4        " 4 space shift

" UI
set number              " show line numbers
set cursorline          " highlight current line
set wildmenu            " show autocomplete menu
set lazyredraw          " redraw on when necessary
set showmatch           " show matching paren 

" Search
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off prev search highlight
nnoremap <leader><space> :nohlsearch<CR>

let mapleader=","       " leader is comma because I'm a copy cat

