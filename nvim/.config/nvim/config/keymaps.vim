" disable search highlight when <esc> pressed

nmap <silent><expr> <esc> v:hlsearch ?
            \ "\:nohl<CR>" :
            \"\<esc>"

" new tab
" nnoremap <silent><leader>t :tabnew<CR>

" split and move cursor
nnoremap <silent><leader>- :sp<CR><C-w>j
nnoremap <silent><leader>_ :vsp<CR><C-w>l

" copy to clip board
nnoremap <leader>yy "+yy
nnoremap <leader>dd "+dd
vnoremap <leader>y "+y
vnoremap <leader>d "+d
nnoremap <leader>p "+p
nnoremap <F5> <C-l>

" select all
nnoremap <leader>a gg<S-v><S-g>

" indents
" Visual shifting (does not exit Visual mode)
vnoremap <C-h> <gv
vnoremap <C-l> >gv
nnoremap <silent><C-l> >>
nnoremap <silent><C-h> <<
inoremap <silent><C-l> <C-o>>>
inoremap <silent><C-h> <C-o><<

" move line
nnoremap <silent><C-k> m`:m--<CR>==``
nnoremap <silent><C-j> m`:m +1<CR>==``

nnoremap <silent><C-q> :q<CR>
nnoremap <silent><C-s> :w<CR>
