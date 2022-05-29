let mapleader=","       " leader is comma because I'm a copy cat

" Packer
lua require('plugins')

" Rainbow Parens
let g:rainbow_active = 1

" Iced
" let g:iced_default_key_mapping_leader = '<LocalLeader>'
let g:iced_enable_default_key_mappings = v:true

" Nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

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
set termguicolors       " use full colors
set nowrap              " don't wrap by default

" Search
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off prev search highlight
nnoremap <leader><space> :nohlsearch<CR>
