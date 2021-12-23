filetype plugin indent on

let g:cur_os=$CUR_OS

lua require('plugins')

function! GetNeoVimVersion()
    redir => s
    silent! version
    redir END
    return matchstr(s, 'NVIM v\zs[^\n]*')
endfunction

source ~/.config/nvim/config/clipboard.vim
source ~/.config/nvim/config/preferences.vim

source ~/.config/nvim/config/keymaps.vim
source ~/.config/nvim/config/autocmds.vim
source ~/.config/nvim/config/styles.vim

for f in split(glob('~/.config/nvim/config/plugins/*.vim'), '\n') " load all plugin settings
    exe 'source' f
endfor
