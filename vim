nmap <expr> <Leader>r Send_text_to_buffer()

fu Send_text_to_buffer()
	let substitute_command = "reset; " . expand('%:p')
	return ":w\<CR>:!tmux send-keys -t .+1 \"" . substitute_command . "\" C-m\<CR>\<CR>"
endfu

syntax on

set relativenumber
set number
set autoindent
