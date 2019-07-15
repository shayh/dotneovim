" ==================================================
" vim-plug  setup
" ==================================================
"
call plug#begin()

" Color schemes and appearance

Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'chriskempson/base16-vim'
Plug 'tomasr/molokai'

" Appearance
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'


" General utilities

Plug 'Shougo/vimproc', {'do' : 'make'}
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-unimpaired'
Plug 'terryma/vim-multiple-cursors'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'vim-scripts/DrawIt'
Plug 'christoomey/vim-tmux-navigator'

" Version control support
"
Plug 'tpope/vim-fugitive'
Plug 'ludovicchabant/vim-lawrencium'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'


" Programming support

Plug 'sheerun/vim-polyglot' " Over 70 language packs
Plug 'tomtom/tcomment_vim'
Plug 'majutsushi/tagbar'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-scripts/Shebang'
Plug 'w0rp/ale'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Valloric/MatchTagAlways'
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }


" Completion

" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi'
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
" Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
"Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-json', {'do': 'npm ci'}
Plug 'neoclide/coc-html', {'do': 'npm ci'}
Plug 'neoclide/coc-snippets', {'do': 'npm ci'}
Plug 'neoclide/coc-tsserver', {'do': 'npm ci'}
Plug 'neoclide/coc-prettier', {'do': 'npm ci'}
Plug 'neoclide/coc-eslint', {'do': 'npm ci'}
Plug 'neoclide/coc-tslint', {'do': 'npm ci'}
Plug 'neoclide/coc-css', {'do': 'npm ci'}
Plug 'neoclide/coc-python', {'do': 'npm ci'}
Plug 'iamcco/coc-angular', {'do': 'npm ci'}

" Programming languages

" Plug 'klen/python-mode'
" Plug 'davidhalter/jedi-vim'
"Plug 'fatih/vim-go'
"Plug 'rust-lang/rust.vim'
" Plug 'palantir/tslint'
"Plug 'Quramy/tsuquyomi'
"Plug 'HerringtonDarkholme/yats.vim'
"Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
"Plug 'groenewege/vim-less'
Plug 'ap/vim-css-color'
"Plug 'vim-scripts/po.vim--Jelenak'
Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'
"Plug 'artur-shaik/vim-javacomplete2'

call plug#end()
