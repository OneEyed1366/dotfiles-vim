if has_key(plugs, 'coc.nvim')
	" TextEdit might fail if hidden is not set.
	:set hidden
	" Some servers have issues with backup files, see #649.
	:set nobackup
	:set nowritebackup
	" Give more space for displaying messages
	:set cmdheight=2
	" Don't pass messages to |ins-completion-menu|.
	:set shortmess+=c
	" Highlight the symbol and its references when holding the cursor.
	autocmd CursorHold * silent call CocActionAsync('highlight')
	" Always show the signcolumn, otherwise it would shift the text each time
	" diagnostics appear/become resolved.
	if has("nvim-0.5.0") || has("patch-8.1.1564")
	  " Recently vim can merge signcolumn and number column into one
	  set signcolumn=number
	else
	  set signcolumn=yes
	endif
	" Use tab for trigger completion with characters ahead and navigate.
	" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
	" other plugin before putting this into your config.
	" inoremap <silent><expr> <TAB>
	"       \ pumvisible() ? "\<C-n>" :
	"       \ <SID>check_back_space() ? "\<TAB>" :
	"       \ coc#refresh()
	inoremap <silent><expr> <TAB> pumvisible() ? coc#_select_confirm()
				\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


	function! s:check_back_space() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1]  =~# '\s'
	endfunction
	" Make <CR> auto-select the first completion item and notify coc.nvim to
	" format on enter, <cr> could be remapped by other vim plugin
	inoremap <expr> <C-CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

	" Use <c-space> to trigger completion.
	if has('nvim')
	  inoremap <silent><expr> <c-space> coc#refresh()
	else
	  inoremap <silent><expr> <c-@> coc#refresh()
	endif

	function! s:show_documentation()
	  if (index(['vim','help'], &filetype) >= 0)
	    execute 'h '.expand('<cword>')
	  elseif (coc#rpc#ready())
	    call CocActionAsync('doHover')
	  else
	    execute '!' . &keywordprg . " " . expand('<cword>')
	  endif
	endfunction

	nnoremap <silent> [[ <Plug>(coc-diagnostic-prev)
	nnoremap <silent> ]] <Plug>(coc-diagnostic-next)
	nnoremap <silent> <Leader>ca <Plug>(coc-definition)
	nnoremap <silent> <Leader>c, <Plug>(coc-references)
	nnoremap <silent> K :call <SID>show_documentation()<CR>

	nnoremap <Leader>cr <Plug>(coc-rename)
	" Remap keys for applying codeAction to the current buffer.
	nnoremap <Leader>c<CR>  <Plug>(coc-codeaction)
	" Apply AutoFix to problem on the current line.
	nnoremap <Leader>cf  <Plug>(coc-fix-current)
	" Search workspace symbols.
	nnoremap <silent><nowait> <Leader>c.  :<C-u>CocList -I symbols<cr>
	" Mappings for CoCList
	" Show all diagnostics.
	nnoremap <silent><nowait> <Leader>ct  :<C-u>CocList diagnostics<cr>
	" Manage extensions.
	nnoremap <silent><nowait> <Leader>Ce  :<C-u>CocList extensions<cr>
	" Show commands.
	nnoremap <silent><nowait> <Leader>Cc  :<C-u>CocList commands<cr>
	" Find symbol of current document.
	nnoremap <silent><nowait> <Leader>Co  :<C-u>CocList outline<cr>
	" Do default action for next item.
	" nnoremap <silent><nowait> <Leader>j  :<C-u>CocNext<CR>
	" Do default action for previous item.
	" nnoremap <silent><nowait> <Leader>k  :<C-u>CocPrev<CR>
	" Resume latest coc list.
	" nnoremap <silent><nowait> <Leader>p  :<C-u>CocListResume<CR>
endif
