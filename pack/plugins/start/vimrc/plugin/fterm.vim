if has_key(plugs, 'vim-floaterm') 
	let g:floaterm_width=0.8
	let g:floaterm_height=0.8
	let g:floaterm_autoclose=2
	" Close terminal when exit VIM
	autocmd QuitPre * FloatermKill!

	nnoremap <Leader>o<CR> :FloatermNew<CR>
	tnoremap <Leader>o<CR> <C-\><C-n>:FloatermNew --height=0.6 --width=0.4 --wintype=float --name=floaterm1 --position=topleft --autoclose=2 ranger --cmd="cd ~"<CR>

	nnoremap <Leader>l :FloatermNext<CR>
	tnoremap <Leader>l <C-\><C-n>:FloatermNext<CR>

	nnoremap <Leader>h :FloatermPrev<CR>
	tnoremap <Leader>h <C-\><C-n>:FloatermPrev<CR>

	nnoremap <Leader><CR> :FloatermToggle<CR>
	tnoremap <Leader><CR> <C-\><C-n>:FloatermToggle<CR>

	nnoremap <Leader>g<CR> :FloatermNew lazygit<CR>

	nnoremap <Leader>b<CR> <C-\><C-n>:FloatermKill
	tnoremap <Leader>b<CR> <C-\><C-n>:FloatermKill<CR>

endif
