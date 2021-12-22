autocmd FileType vim set shiftwidth=2
autocmd FileType zsh set shiftwidth=2

autocmd BufRead,BufNewFile */usr/local/nginx/conf/* set ft=nginx
autocmd BufRead,BufNewFile */etc/nginx/* set ft=nginx
autocmd BufRead,BufNewFile nginx.conf set ft=nginx
autocmd BufRead,BufNewFile *.nginx set ft=nginx

autocmd BufRead,BufNewFile ~/_jry/algorithms/*.cpp 
      \ nnoremap <silent><C-M-t> :0r ~/_jry/algorithms/cpp/template.cpp<CR>

autocmd BufRead,BufNewFile Dockerfile.*
      \ set ft=dockerfile

autocmd filetype python 
      \ nnoremap <silent><M-C-r> :call RUN_PYTHON()<CR>
autocmd filetype cpp 
      \ nnoremap <silent><M-C-r> :call RUN_CPP()<CR>
autocmd filetype sh 
      \ nnoremap <silent><M-C-r> :call RUN_SH()<CR>

" go to the last position that I was working on
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" functions
function! RUN_PYTHON()
    silent w
    let output=system('python3 '.expand('%:p'))
    echo ' '
    echo '-------OUTPUT--------'
    echo ' '
    echo output
    echo ' '
endfunction

function! RUN_CPP()
    silent w
    let compile_out=system('g++ -std=c++17 -O2 -Wall -Wno-sign-compare -DLOCAL '.expand('%:p').' -o ./a.out')
    if v:shell_error != 0
        echo compile_out 
        return
    endif
    let run_out=system(getcwd().expand('/a.out 2>&1'))
    echo compile_out 
    echom ' ' | echom "-------OUTPUT--------" | echom ' '
    if run_out == ''
      echo "No output. Something might have gone wrong." | echom ' '
    else
      echo run_out | echom ' '
    endif

    call system(expand('rm -rf ').getcwd().expand('/a.out')) " remove out the run file
endfunction

function! RUN_SH()
    silent w
    let output=system('zsh '.expand('%:p'))
    echo ' '
    echo '-------OUTPUT--------'
    echo ' '
    echo output
    echo ' '
endfunction
