" Current misc vim settings

" Set dracula colorscheme
" let g:dracula_colorterm = 0
set background=dark
set termguicolors
colorscheme gruvbox

let mapleader=" "
set tabstop=4
set shiftwidth=4
set nu
set relativenumber
set cursorline
set inccommand=nosplit
syntax on
filetype on
set hidden
set guicursor=i:block
autocmd Filetype c set expandtab
autocmd Filetype cpp set expandtab
autocmd Filetype java set expandtab
autocmd Filetype html set tabstop=2 | set expandtab | set shiftwidth=2
autocmd Filetype css set tabstop=2 | set expandtab | set shiftwidth=2
autocmd Filetype javascript set tabstop=2 | set expandtab | set shiftwidth=2 | set softtabstop=0
autocmd Filetype typescript set tabstop=2 | set expandtab | set shiftwidth=2
autocmd Filetype javascriptreact set tabstop=2 | set expandtab | set shiftwidth=2 | set softtabstop=0
autocmd Filetype typescriptreact set tabstop=2 | set expandtab | set shiftwidth=2 | set softtabstop=0
autocmd Filetype lua set tabstop=2 | set expandtab | set shiftwidth=2 | set softtabstop=0
autocmd Filetype htmldjango set tabstop=2 | set expandtab | set shiftwidth=2
autocmd Filetype dart set tabstop=2 | set expandtab | set shiftwidth=2

autocmd Filetype javascriptreact setl commentstring={/*\ %s\ */}
autocmd Filetype typescriptreact setl commentstring={/*\ %s\ */}

" set amount of columns to the left of relativenumber
set signcolumn=yes:1
set completeopt=menuone,noselect
hi SignColumn guibg=none
hi cursorline guibg=none
hi cursorlinenr guibg=none
hi normal guibg=none

" color text after column 80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/
