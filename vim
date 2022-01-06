map <Leader>a :w<CR>:!tmux send-keys -t .+1 "" C-m<CR>
map <expr> <Leader>c Send_text_to_buffer()

fu Send_text_to_buffer() abort
	return ':w<CR>:!tmux send-keys -t .+1 "' . expand('%:p') . '"<CR>'
endfu

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

highlight VertSplit cterm=NONE 
highlight error none
