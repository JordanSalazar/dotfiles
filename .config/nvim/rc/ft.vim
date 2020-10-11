" -----------------------------------------------------------------------------
" Filtype
" -----------------------------------------------------------------------------
autocmd BufNewfile,BufRead *.blade.php set syntax=blade ft=blade
autocmd FileType vue,html,css,blade.php EmmetInstall

autocmd FileType css,scss,sass setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

autocmd FileType php set tabstop=4 shiftwidth=4 softtabstop=4
