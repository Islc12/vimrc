" Rich's vimrc config file
let $PATH = $HOME . '/.local/bin:' . $PATH

filetype indent on
set backspace=indent,eol,start
syntax on
set smartindent     " Auto indents after { and backs off an indent after }
set showcmd	        " Show (partial) command in status line.
set showmatch	      	" Show matching brackets.
set ignorecase	   	" Do case insensitive matching
set smartcase	        " Do smart case matching
set incsearch	      	" Incremental search
set number	       	" Adds line numbers to Vim
set autowrite	    	" Automatically save before commands like :next and :make
set hidden	       	" Hide buffers when they are abandoned
set mouse=a       	" Enable mouse usage (all modes)
set tabstop=4           " Sets the number of spaces per tab
set shiftwidth=4        " Sets the number of spaces for indentation
set expandtab           " Converts tab character to spaces
set mousehide           " Hides the mouse pointer while typing
set colorcolumn=100     " Highlight guideline for recommended end of text
set textwidth=100        " Sets the limit for lines to be 90 characters
set showmode            " Show the mode you are on the last line
set hlsearch		" Highlight search results
set title               " Set the title

" Sometimes I want these features but always seem to forget what they're called
" Uncomment them if you wish to have highlighting helps when you're writing text documents
" set cursorline        " Hightlight cursor line underneath the cursor horizontally
" set cursorcolumn      " Hightlight cursor line underneath the cursor vertically

" Added sublime text color scheme
colorscheme sublimemonokai

" Custom Mapping for C programming
" Compile and run program
nnoremap <F5> :w<CR>:!gcc % -o %:r && ./%:r; echo "Press ENTER to go back into vim"; read<CR> 

" Custom Mapping for C++ programming
" Compile and run program
nnoremap <F4> :w<CR>:!g++ -o %:r % && ./%:r; echo "Press ENTER to go back into vim"; read<CR>

" Custom Mapping for Java Programming
" Compile and run program
nnoremap <F6> :w<CR>:!javac % && java %:r; echo "Press ENTER to go back into vim"; read<CR>

" Adding pathogen to vim
execute pathogen#infect()

" NERDTree functions
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif
" Show the number of files in each directory of NERDTree
let g:NERDTreeFileLines = 1

" Vim-Airline Functions
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

" ALE Functions
let g:ale_python_flake8_executable = 'flake8'
let g:ale_python_pylint_executable = 'pylint'

" vim-commentary functions
" Correct vim-commentary to use # instead of /* %s */ for python and shell script comments
au FileType python,sh setlocal commentstring=#\ %s
" Set vim-commentary to use " for dealing with vim scripts rather than /* */
au FileType vim setlocal commentstring=\"\ %s
