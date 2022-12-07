nnoremap <ESC> :noh<CR>
" Exit from Insert mode on 'jk'
inoremap jk <ESC>
" Reload current config
nnoremap <Leader><Leader> :source $MYVIMRC<CR>
nnoremap <Leader>Ve :e $MYVIMRC<CR>
nnoremap <Leader>Vc :e ~/.vim/pack/plugins/start/vimrc/plugin/settings.vim<CR>
nnoremap <Leader>Vk :e ~/.vim/pack/plugins/start/vimrc/plugin/keymappings.vim
nnoremap <Leader>Vi :PlugInstall<CR>
nnoremap <Leader>Vs :PlugStatus<CR>
" Write to file
nnoremap <Leader>m :w<CR>
" Close all windows
nnoremap <Leader>q<Space> :qall<CR>
" Window movements
nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>wk <C-W>k
nnoremap <Leader>wl <C-W>l
nnoremap <Leader>w\ :vsplit<CR><C-W>l
nnoremap <Leader>w- :split<CR><C-W>j 
nnoremap <Leader>wd :q<CR>
" Buffer actions
nnoremap <Leader>bd :bd<CR>
nnoremap <Leader>bD :bd!<CR>
nnoremap <Tab> :bNext<CR>
nnoremap <S-Tab> :bprevious<CR>
" Tab actions
nnoremap <Leader>ot :tabnew <CR>
nnoremap <Leader>td :tabclose<CR>
nnoremap <Leader><Tab> :tabNext<CR>
nnoremap <Leader><S-Tab> :tabprevious<CR>
