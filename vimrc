":so[urce] $MYVIMRC for reload

" map \t :w<CR> :!pdflatex *tex<CR> :!zathura *pdf<CR><CR>
" map \h :w<CR> :!./make<CR> :!surf *html<CR><CR>
" map \r :w<CR> :!cat *.gs \| golfscript.rb<CR>
"""
" map \c :w!<CR> :w! temp.c<CR> :!cc -ltinfo -lm temp.c -o temp<CR>:!st -f "Source Code Pro:pixelsize=18:antialias=true:autohint=true" -e ./temp <CR><CR>
" map \h :w<CR> :!./make<CR> :!chromium 2>/dev/null *html<CR><CR>

map \c :w<CR>:!make > log<CR>:!st -f "Source Code Pro:pixelsize=24:antialias=true:autohint=true" -e bash wait<CR><CR>
color slate
syntax on
filetype plugin on

set relativenumber
set tabstop=4
set shiftwidth=4
set cmdheight=2
set nocompatible   " Disable vi-compatibility
set t_Co=256
set list listchars=tab:\ \ 
set number
set clipboard=unnamed
set ruler
set hlsearch
set shortmess-=S
set ignorecase
set autoindent
set paste
set autoindent
set backspace=indent,eol,start

"highlight VertSplit ctermbg=NONE guibg=NONE
highlight VertSplit cterm=NONE 
highlight error none

"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = '|'
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#formatter = 'default'
"let g:airline_powerline_fonts = 1
