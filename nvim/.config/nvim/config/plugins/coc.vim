let g:coc_global_extensions = [ 
      \ 'coc-snippets', 
      \ 'coc-tsserver', 
      \ 'coc-sh', 
      \ 'coc-json', 
      \ 'coc-go',
      \ 'coc-clangd',
      \ 'coc-ultisnips',
      \ 'coc-snippets',
      \ 'coc-emmet',
      \ 'coc-explorer',
      \ ]

if g:cur_os != 'linux'
  call add(g:coc_global_extensions, 'coc-imselect')
endif

let g:coc_node_path = substitute(system('which node'), '\n', '', '')

let g:python3_host_skip_check = 1
let g:python3_host_prog = trim(system('which python3')) " trim removes new line

let g:node_client_debug = 0

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = ''
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = ''

let g:coc_config_home = '~/.config/nvim/config/'

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

autocmd filetype cpp silent call coc#config('clangd.fallbackFlags',['-std=c++17'])

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> <space>e :CocCommand explorer<CR>

nnoremap <silent><nowait> <space>i  :<C-u>CocFzfList<cr>
" Remap keys for applying codeAction to the current buffer.
" nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)


" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Use K to show documentation in preview window.
nnoremap <silent> H :call <SID>show_documentation()<CR>

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)


" Use ctrl - space to trigger completion.
if has('nvim')
  inoremap <silent><expr> <C-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-e> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-e>"
  nnoremap <silent><nowait><expr> <C-y> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-y>"
  inoremap <silent><nowait><expr> <C-e> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1, 1)\<cr>" : "\<C-e>"
  inoremap <silent><nowait><expr> <C-y> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0, 1)\<cr>" : "\<C-y>"
  vnoremap <silent><nowait><expr> <C-e> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-e>"
  vnoremap <silent><nowait><expr> <C-y> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-y>"
endif


  inoremap <silent><expr> <cr> "\<C-g>u\<CR>"


inoremap <silent><nowait><expr> <Tab>
      \ pumvisible() ? coc#_select_confirm() :
	  \ coc#expandableOrJumpable() ?
	  \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <silent><expr> <S-TAB>
      \ coc#jumpable() ? "\<C-R>=coc#rpc#request('snippetPrev', [])<cr>" :
      \ "\<C-d>"

snoremap <buffer><silent><nowait><TAB> <Esc>:call coc#rpc#request('snippetNext', [])<cr>
snoremap <buffer><silent><nowait><S-TAB> <Esc>:call coc#rpc#request('snippetPrev', [])<cr>

" functions
" tab behavior
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Enter key behavior
function s:ExpandSnippetOrClosePumOrReturnNewline()
  if pumvisible()
    if !empty(v:completed_item)
      return "\<C-y>"
    endif
  else
    return "\<CR>"
  endif
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

