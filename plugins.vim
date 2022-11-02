
" plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:python3_host_prog='/usr/local/opt/python/libexec/bin/python'
let g:python3_host_prog='/opt/homebrew/bin/python3'
call plug#begin('~/.vim/plugged')
" common develpment
Plug 'rizzatti/dash.vim'
Plug 'numToStr/Comment.nvim'
Plug 'machakann/vim-highlightedyank'
" git
Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'
"Plug 'junegunn/gv.vim'
Plug 'elzr/vim-json'
Plug 'tomtom/tlib_vim'
" navigation
Plug 'scrooloose/nerdtree'
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'
Plug 'vim-scripts/mru.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'junegunn/goyo.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'Asheq/close-buffers.vim'
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
" ranger
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
" edit
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'terryma/vim-expand-region'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'michaeljsmith/vim-indent-object'
" tools
Plug 'simeji/winresizer'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neovim/nvim-lspconfig'
" Vim Script
Plug 'folke/which-key.nvim'

" scheme
Plug 'vim-scripts/peaksea' 
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'cocopon/iceberg.vim'
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'ayu-theme/ayu-vim' " or other package manager
Plug 'marcopaganini/termschool-vim-theme'
Plug 'vim-scripts/twilight256.vim'
Plug 'vim-scripts/wombat256.vim'
Plug 'fcpg/vim-orbital'
Plug 'rakr/vim-colors-rakr'
Plug 'AlessandroYorba/Sierra'
Plug 'cseelus/vim-colors-lucid'
Plug 'jonathanfilip/vim-lucius'
Plug 'christophermca/meta5'
Plug 'dikiaap/minimalist'
Plug 'arcticicestudio/nord-vim'
Plug 'w0ng/vim-hybrid'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'nanotech/jellybeans.vim'
Plug 'danilo-augusto/vim-afterglow'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'ajmwagar/vim-deus'
Plug 'chase/focuspoint-vim'
Plug 'whatyouhide/vim-gotham'
"...
Plug 'yamatsum/nvim-cursorline'
Plug 'sudormrfbin/cheatsheet.nvim'

Plug 'junegunn/goyo.vim'

" my plug ins :)
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

 Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
 Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
 Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

Plug 'rmagatti/auto-session'
Plug 'sbdchd/neoformat'
Plug 'phaazon/hop.nvim'
Plug 'LoricAndre/OneTerm.nvim'
Plug 'Olical/aniseed'
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
Plug 'jlesquembre/nterm.nvim'
Plug 'jiangmiao/auto-pairs'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
" Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

call plug#end()

lua << EOF
EOF

