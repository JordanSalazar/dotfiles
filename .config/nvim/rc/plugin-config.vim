" -----------------------------------------------------------------------------
" Plugin config
" -----------------------------------------------------------------------------

" Gitgutter
let g:gitgutter_max_signs = 10000

" Airline
let g:airline#extensions#tabline#enabled = 1

" Startify
let g:startify_list_order = [
\ ['Recent files in this directory'],
\ 'dir',
\ ['Recent files'],
\ 'files',
\ 'bookmarks',
\ 'sessions']
let g:startify_custom_indices = [
            \ '1', '2', '3', '4',
            \ 'Q', 'W', 'E', 'R',
            \ '5', '6', '7', '8',
            \ 'A', 'S', 'D', 'F']
autocmd VimEnter *
                \   if !argc()
                \ |   Startify
                \ |   NERDTree
                \ |   wincmd w
                \ | endif

" Nerd Tree
let g:NERDTreeWinSize = 26
let NERDTreeShowHidden = 1

" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDTrimTrailingWhitespace = 1
let g:NERDCustomDelimiters = { 'vue': { 'left': '//', 'leftAlt': '<!--', 'rightAlt': '-->' } }

" Neomake
" hi NeoErrorMsg ctermfg=52
" let g:neomake_error_sign = {'text': '✘', 'texthl': 'NeoErrorMsg'}

" hi NeoWarningMsg ctermfg=94
" let g:neomake_warning_sign = {'text': '❕', 'texthl': 'NeoWarningMsg'}

" let g:neomake_javascript_enabled_makers = ['eslint']
" let g:neomake_php_enabled_makers = ['php', 'phpcs']
" let g:neomake_html_enabled_makers = []
" let g:neomake_php_phpcs_args_standard = 'PSR2'

" let g:neomake_javascript_eslint_exe = $PWD .'/node_modules/.bin/eslint'


" let g:neomake_verbose = 0
" let g:neomake_logfile = '/tmp/error.log'
" let g:neomake_open_list = 0
" ALE
" let g:ale_set_highlights = 0
" let g:airline#extensions#ale#enabled = 1
" let g:ale_completion_enabled = 1
" let g:jsx_ext_required = 0
" let g:ale_sign_column_always = 1
" let g:ale_fix_on_save = 1
" let g:ale_php_phpcs_standard='PSR2'
" let g:ale_fixers = {
" \   '*': ['remove_trailing_lines', 'trim_whitespace'],
" \   'javascript': ['eslint'],
" \}

" test
let test#strategy = 'neovim'

" Vim jsx pretty
let g:vim_jsx_pretty_colorful_config = 1

" Php doc generator
let g:pdv_template_dir = '/Users/jrs/.config/nvim/Plug/pdv/templates_snip'

"Deoplete
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_smart_case = 1
" let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
" let g:deoplete#ignore_sources.php = ['omni']
" Use ALE and also some plugin 'foobar' as completion sources for all code.
" call deoplete#custom#option('sources', {
" \ '_': ['ale', 'phpcd'],
" \})

" Prettier
" let g:prettier#exec_cmd_async = 1
" let g:prettier#autoformat = 0
" let g:prettier#quickfix_enabled = 0

" Vim tmux navigator
let g:tmux_navigator_no_mappings = 1

let $FZF_DEFAULT_COMMAND = 'rg -l ""'
let g:fzf_layout = { 'window': { 'width': 0.5, 'height': 0.5, 'yoffset': 0, 'xoffset': 0.5 } }

nnoremap <silent> ˙ :TmuxNavigateLeft<cr>
nnoremap <silent> ∆ :TmuxNavigateDown<cr>
nnoremap <silent> ˚ :TmuxNavigateUp<cr>
nnoremap <silent> ¬ :TmuxNavigateRight<cr>
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" Indent guides
" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_auto_colors = 0
" let g:indent_guides_start_level = 3
" let g:indent_guides_guide_size = 1

" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=black

let g:typescript_indent_disable = 1
