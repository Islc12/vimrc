execute pathogen#infect()

autocmd FileType sh setlocal omnifunc=coc#complete
autocmd FileType python setlocal omnifunc=coc#complete

autocmd FileType python,sh setlocal omnifunc=

" Use Alt + n or p to navigate the completion menu in coc.nvim
inoremap <silent><expr> <Down> pumvisible() ? coc#pum#next(1) : "\<Down>"
inoremap <silent><expr> <Up> pumvisible() ? coc#pum#prev(1) : "\<Up>"

" Confirm completion with Tab
inoremap <silent><expr> <Tab> pumvisible() ? coc#pum#confirm() : "\<Tab>"

set showcmd	         	" Show (partial) command in status line.
set showmatch	      	" Show matching brackets.
set ignorecase	   	    " Do case insensitive matching
set smartcase		    " Do smart case matching
set incsearch	      	" Incremental search
set number	         	" Adds line numbers to Vim
set autowrite	      	" Automatically save before commands like :next and :make
set hidden	         	" Hide buffers when they are abandoned
set mouse=a       		" Enable mouse usage (all modes)
set tabstop=4           " Sets the number of spaces per tab
set shiftwidth=4        " Sets the number of spaces for indentation
set expandtab           " Converts tabs to spaces
set mousehide           " Hides the mouse pointer while typing
set cursorline          " Hightlight cursor line underneath the cursor horizontally
set cursorcolumn        " Hightlight cursor line underneath the cursor vertically
set colorcolumn=140     " Highlight guideline for recommended end of text
