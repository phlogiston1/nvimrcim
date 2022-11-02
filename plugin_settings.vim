"bufexplorer
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
"mru
let MRU_Max_Entries = 400
"vim grep
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH
"vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<C-s>'
let g:multi_cursor_select_all_word_key = '<A-s>'
let g:multi_cursor_start_key           = 'g<C-s>'
let g:multi_cursor_select_all_key      = 'g<A-s>'
let g:multi_cursor_next_key            = '<C-s>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
"lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*FugitiveHead")?FugitiveHead():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*FugitiveHead") && ""!=FugitiveHead())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }
"goyo
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
"ale
" let g:ale_linters = {
" \   'javascript': ['jshint'],
" \   'python': ['flake8'],
" \   'go': ['go', 'golint', 'errcheck']
" \}
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
"nerdtree
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
let g:NERDTreeShowIgnoredStatus = 1
"ctrlp
"gitgutter
let g:gitgutter_enabled=1
"coc
" inoremap <silent><expr> <TAB>
"       \ coc#pum#visible() ? coc#pum#next(1) :
"       \ CheckBackspace() ? \"\<Tab>" :
"       \ coc#refresh()inoremap <expr><S-TAB> pumvisible() ? \"\<C-p>" : \"\<C-h>"
" inoremap <silent><expr> <c-space> coc#refresh()
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              " \: \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"neoformat
let g:ranger_map_keys=0
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

let g:minimap_width = 10
