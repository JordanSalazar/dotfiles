" -----------------------------------------------------------------------------
" General
" -----------------------------------------------------------------------------
syntax enable
set background=dark
colorscheme monokai_pro

filetype plugin indent on

" if exists('+colorcolumn')
"     set colorcolumn=80
" else
"     au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
" endif

set clipboard=unnamed
if has('unnamedplus')
    set clipboard=unnamedplus
endif

" hightlight javascript function params
"highlight javaScriptParams ctermfg=208

"autocmd BufWinEnter *.js match javaScriptParams /\vfunction\.*\zs\(\zs.+\ze\)/
"autocmd InsertEnter *.js match javaScriptParams /\vfunction\.*\zs\(\zs.+\ze\)/
"autocmd InsertLeave *.js match javaScriptParams /\vfunction\.*\zs\(\zs.+\ze\)/
"autocmd BufWinEnter *.js match javaScriptParams /\vfunction\.*\(\zs.+[^\)]*/
"autocmd InsertEnter *.js match javaScriptParams /\vfunction\.*\(\zs.+[^\)]*/
"autocmd InsertLeave *.js match javaScriptParams /\vfunction\.*\(\zs.+[^\)]*/
"autocmd BufWinLeave *.js call clearmatches()

" These are overwrited by plugins otherwise.. sigh
hi Normal ctermbg=NONE guibg=NONE
hi NonText ctermbg=NONE guibg=NONE
hi LineNr ctermfg=NONE ctermbg=NONE guibg=NONE
hi Folded ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
