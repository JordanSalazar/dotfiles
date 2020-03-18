" -----------------------------------------------------------------------------
" Plugins
" -----------------------------------------------------------------------------
call plug#begin('~/.config/nvim/Plug')

Plug 'SirVer/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'plasticboy/vim-markdown'
" Plug 'airblade/vim-gitgutter'
" Plug 'ColinKennedy/vim-gitgutter'
Plug 'tpope/vim-speeddating'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf'
" Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plug 'JulesWang/css.vim'
" Plug 'cakebaker/scss-syntax.vim'
Plug 'nazo/pt.vim'
" Plug 'StanAngeloff/php.vim'
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
Plug 'scrooloose/nerdcommenter'
Plug 'mihaifm/bufstop'
Plug 'shime/vim-livedown'
Plug 'jiangmiao/auto-pairs'
" Plug 'Shougo/unite.vim'
" Plug 'xsbeats/vim-blade'
Plug 'bling/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'kristijanhusak/vim-multiple-cursors'
" Plug 'othree/html5.vim'
" Plug 'tpope/vim-markdown'
Plug 'tpope/vim-abolish'
" Plug 'honza/vim-snippets'
Plug 'mhinz/vim-startify'
Plug 'qbbr/vim-twig'
" Plug 'posva/vim-vue'
" Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'scrooloose/nerdtree'
" Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'Shougo/vimproc'
Plug 'jistr/vim-nerdtree-tabs'
" Plug 'benekastah/neomake'
" Plug 'dense-analysis/ale'
Plug 'heavenshell/vim-jsdoc'
Plug 'djoshea/vim-autoread'
Plug 'suan/vim-instant-markdown'
" Plug 'wlangstroth/vim-racket'
Plug 'christoomey/vim-tmux-navigator'
Plug 'amadeus/vim-mjml'
Plug 'janko/vim-test'
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
" Plug 'arcticicestudio/nord-vim'
" Plug 'lifepillar/vim-solarized8'
Plug 'sheerun/vim-polyglot'
Plug 'jparise/vim-graphql'
Plug 'vim-airline/vim-airline-themes'
" Plug 'jason0x43/vim-js-indent'
" Plug 'pangloss/vim-javascript'
" Plug 'leafgarland/typescript-vim'
Plug 'phanviet/vim-monokai-pro'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'vue'] }

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'arnaud-lb/vim-php-namespace'
Plug 'noahfrederick/vim-laravel'

call plug#end()
