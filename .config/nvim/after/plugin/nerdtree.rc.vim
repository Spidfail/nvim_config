if !exists('g:NERDTree')
  finish
endif

" NERDTree
let g:NERDTreeShowHidden = 1 
let g:NERDTreeMinimalUI = 1 " hide helper
let g:NERDTreeIgnore = ['^node_modules$'] " ignore node_modules to increase load speed 
let g:NERDTreeStatusline = '' " set to empty to use lightline
"
noremap <silent> <C-b> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
" " Map to open current file in NERDTree and set size
nnoremap <C-f> :NERDTreeFind<CR> :vertical resize 45<CR>
nnoremap <C-n> :NERDTree<CR>

" " Close window if NERDTree is the last one
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
