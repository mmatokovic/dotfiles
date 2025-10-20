nnoremap <C-a> ggVG<CR>                 " Select All
nnoremap <Leader>h :<C-u>split<CR>      " Horizontal window creation
nnoremap <Leader>v :<C-u>vsplit<CR>     " Vertical window creation
nnoremap <S-q> ZQ                       " Close a window
nnoremap <silent> s :terminal<CR>       " Terminal emulation
nnoremap <silent> S :tab ter<CR>
nnoremap <silent> <C-h> :wincmd h<CR>   " Window movement
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>

map <C-h> <C-w>h                        " Shortcut split navigation
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nnoremap <silent> <C-t> :tabe<CR>       " Tab management
nnoremap <silent> <Tab> :tabn<CR>
nnoremap <silent> <S-Tab> :tabp<CR>
nnoremap <silent> <Leader>, :b#<CR>     " Switching between most recent buffers
nnoremap <leader>. :lcd %:p:h<CR>       " Set working directory
map <C-s> :w<CR>                        " Save file
inoremap <C-s> <c-o>:w<cr>              " Save file
" Flip windows
map <C-r> <C-w>r
nnoremap <silent> <C-Left> :vertical resize -3<CR>
nnoremap <silent> <C-Right> :vertical resize +3<CR>
nnoremap <silent> <C-Up> :resize +3<CR>
nnoremap <silent> <C-Down> :resize -3<CR>

