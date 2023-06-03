function! s:vscodeCommentary(...) abort
  if !a:0
    let &operatorfunc = matchstr(expand('<sfile>'), '[^. ]*$')
    return 'g@'
  elseif a:0 > 1
    let [line1, line2] = [a:1, a:2]
  else
    let [line1, line2] = [line("'["), line("']")]
  endif

  call VSCodeCallRange('editor.action.commentLine', line1, line2, 0)
endfunction

function! s:vscodeGoToDefinition(str)
  if exists('b:vscode_controlled') && b:vscode_controlled
      call VSCodeNotify('editor.action.' . a:str)
  else
      " Allow to function in help files
      exe "normal! \<C-]>"
  endif
endfunction

let mapleader="\<Space>"
# Basic
nnoremap <Leader>m <Cmd>call VSCodeNotify("workbench.action.files.save")<CR>
nnoremap <Leader>/ <Cmd>call VSCodeNotify('workbench.action.findInFiles', { 'query': expand('<cword>')})<CR>
# Comments
command! -range -bar VSCodeCommentary call s:vscodeCommentary(<line1>, <line2>)
xnoremap <expr> gc <SID>vscodeCommentary()
nnoremap <expr> gcc <SID>vscodeCommentary() . '_'
# Definitions
nnoremap K <Cmd>call VSCodeNotify('editor.action.showHover')<CR>
nnoremap <Leader>cK <Cmd>call <SID>vscodeGoToDefinition('revealDeclaration')<CR>
nnoremap <Leader>cD <Cmd>call <SID>vscodeGoToDefinition('revealDefinition')<CR>
nnoremap <Leader>cd <Cmd>call VSCodeNotify('editor.action.peekDeclaration')<CR>
nnoremap <Leader>ca <Cmd>call VSCodeNotify('workbench.action.gotoSymbol')<CR>
nnoremap <Leader>c, <Cmd>call VSCodeNotify('editor.action.referenceSearch.trigger')<CR>
# Reveal definition aside
nnoremap <Leader>cl <Cmd>call VSCodeNotify('editor.action.revealDefinitionAside')<CR>
xnoremap <Leader>cl <Cmd>call VSCodeNotify('editor.action.revealDefinitionAside')<CR>
# Quickfix
nnoremap <Leader>c<CR> <Cmd>call VSCodeNotify('editor.action.quickFix')<CR>
# Picker in visual mode
xnoremap <Leader><CR> <Cmd>call VSCodeNotifyVisual('workbench.action.showCommands', 1)<CR>
xnoremap <Leader>/ <Cmd>call VSCodeNotifyVisual('workbench.action.findInFiles', 0)<CR>