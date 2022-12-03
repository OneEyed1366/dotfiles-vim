if has_key(plugs, 'vim-fugitive')
	nnoremap <Leader>gh :Gvdiffsplit<CR>	
	" Write whole buffer to the stage
	nnoremap <Leader>gM :Gwrite<CR>
endif
