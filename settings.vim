set mouse=a
set history=500
filetype plugin on
filetype indent on
set autoread " read if file changed externally"
au FocusGained,BufEnter * checktime

set so=7
set wildmenu
set wildignore=*.o,*~,*.pyc,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
set ruler
set cmdheight=1
set hid
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
set updatetime=300

"get rid of error bells
set noerrorbells
set novisualbell
set t_vb=
set tm=500
autocmd GUIEnter * set vb t_vb=

set foldcolumn=1

syntax enable
set t_Co=256
set termguicolors     " enable true colors support
colorscheme ayu
set background=dark
set encoding=utf8
set ffs=unix,dos,mac

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai "auto indent
set si "smart indent
set wrap "Wrap lines

set gfn=JetBrainsMono\ Nerd\ Font\ Mono:h14

"disable scrollbars
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

set undodir=~/.vim/vimrcs/temp_dirs/undodir
set undofile

" set laststatus=2
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

set nu
set relativenumber
augroup relative_number
    autocmd!
    " autocmd InsertEnter * :set norelativenumber
    " autocmd InsertLeave * :set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    " Fix syntax highlighting
    autocmd BufEnter * :syntax sync fromstart
augroup END
