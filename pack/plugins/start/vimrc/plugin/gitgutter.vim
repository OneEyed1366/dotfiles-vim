if has_key(plugs, 'vim-gitgutter')
	let g:gitgutter_signs = 1

	nnoremap ]g <Plug>(GitGutterNextHunk)
	nnoremap [g <Plug>(GitGutterPrevHunk)

	nnoremap <Leader>gm <Plug>(GitGutterStageHunk)
	nnoremap <Leader>gu <Plug>(GitGutterUndoHunk)
	nnoremap <Leader>gp <Plug>(GitGutterPreviewHunk)
	nnoremap <Leader>gf <Plug>(GitGutterDiffOrig)
endif
