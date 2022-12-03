if has_key(plugs, 'fzf')
	let $FZF_DEFAULT_COMMAND='
				\find . \( 
				\-name node_modules -o 
				\-name .git 
				\\) -prune -o -print'

	nnoremap <Leader>ff :FZF<CR>
endif
