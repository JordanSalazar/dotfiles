" -----------------------------------------------------------------------------
" Key mapping
" -----------------------------------------------------------------------------
let mapleader = ','

" broken comma
" let mapleader = '/'

set pastetoggle=<leader>p

nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

nnoremap <leader>h :noh<cr>
nnoremap <leader>n :NERDTreeTabsToggle<CR>
inoremap <leader>; <C-o>A;
nnoremap <leader>; A;<Esc>o
nnoremap <leader>q <Esc>:q<CR>
nnoremap <leader>w <Esc>:wq<CR>
nnoremap <leader>s <Esc>:w<CR>
inoremap <leader>[ <Esc>A<space>{}<left><CR><Esc>O
nnoremap <Space> /

nnoremap <leader>t :TestNearest<CR>
nmap <leader>tf :TestFile<CR>
nmap <leader>ts :TestSuite<CR>
nmap <leader>tl :TestLast<CR>
nmap <leader>tg :TestVisit<CR>

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" nnoremap ∆ <C-W><C-J>
" nnoremap ˚ <C-W><C-K>
" nnoremap ¬ <C-W><C-L>
" nnoremap ˙ <C-W><C-H>

nnoremap <C-p> :FZF<CR>

nnoremap P "0p

" nnoremap <tab> > <space>
" nnoremap <S-tab> < <space>

nnoremap + :exe "vertical resize +10"<CR>
nnoremap - :exe "vertical resize -10"<CR>

" vnoremap <tab> >
" vnoremap <S-tab> <

" inoremap <tab> <Esc> `^
" inoremap <expr> <Tab> pumvisible() ? '\<C-n>' : '\<Tab>'
" inoremap <expr> <S-Tab> pumvisible() ? '\<C-p>' : '\<S-Tab>'
" inoremap <silent><expr><tab> pumvisible() ? '\<c-n>' : '\<tab>'
" inoremap <silent><expr><s-tab> pumvisible() ? '\<c-p>' : '\<s-tab>'

cmap w!! w !sudo tee % >/dev/null
cmap vt vsp term://zsh

imap ii <Esc>

" Plugin mappings
nmap <leader>b ;Bufstop<CR>
nmap <leader>a ;BufstopFast<CR>
nnoremap <leader>b ;BufstopModeFast<CR>

let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

let g:fzf_command_prefix='fzf'

let g:UltiSnipsExpandTrigger=""

" nnoremap <C-o> :call pdv#DocumentCurrentLine()<CR>
nnoremap <C-o> :call pdv#DocumentWithSnip()<CR>
nnoremap ø :exe "JsDoc"<CR>

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
