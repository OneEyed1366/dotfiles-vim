if has_key(plugs, 'ale')
	let g:ale_disable_lsp = 1
	let g:ale_completion_autoimport = 1
	let g:ale_fix_on_save = 1
	let b:ale_fixers = ['prettier', 'eslint']
endif
