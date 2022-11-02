"leaders:
", - open plugin windows (nerdtree, etc), create/manipulate tabs, buffers
"" " - find bindings
""\" - terminal commands (finders, etc)
""<ctrl>" (insert mode) - code Snippets
"<ctrl> (normal mode) - easy motion hjkl:panels, sf:tabs, ed:buffers.
"<option> - enable/disable plugins for speed, etc.
"<tab> CHANGING TO '`'! - run actions on file (linting, runing, etc.)
let mapleader=","
"launch plugins:
nmap <leader>n :NvimTreeToggle<cr>
nmap <leader>z :Goyo<cr>
nmap <leader>m :MRU<cr>
nmap <leader><space> :call OpenTerminal()<cr>i
nmap <leader>r :Ranger<cr>
nmap <leader>g :GitGutterToggle<cr>
nmap <leader>p :MinimapToggle<cr>
"tabs:
nmap <leader>t :tabnew<cr>
nmap <leader>tc :tabclose<cr>
nmap <leader>to :tabonly<cr>
nmap <leader>tm :tabmove<cr>
nmap <leader>to :tabonly<cr>
nmap <leader>t<leader> :tabnext<cr>
noremap <leader>1  :tabn1<cr>
noremap <leader>2  :tabn2<cr>
noremap <leader>3  :tabn3<cr>
noremap <leader>4  :tabn4<cr>
noremap <leader>5  :tabn5<cr>
noremap <leader>6  :tabn6<cr>
noremap <leader>7  :tabn7<cr>
noremap <leader>8  :tabn8<cr>
noremap <leader>9  :tabn9<cr>
"buffers:
nmap <leader>b :BufExplorer<cr>
nmap <leader>bc :Bclose<cr>:tabclose<cr>gT
nmap <leader>bca :bufdo bd<cr>
"editor functions:
nmap <leader>cd :cd %:p:h<cr>:pwd<cr>
nmap <leader>ss :setlocal spell!<cr>
nmap <leader>q :e ~/buffer<cr>
nmap <leader>x :e ~/buffer.md<cr>
nmap <leader>s :w<cr>
nmap <leader>S execute 'w !sudo tee % > /dev/null' <bar>
"split with ,hjkl
nmap <leader>h <C-w>v
nmap <leader>l <C-w>v<C-w>l
nmap <leader>j <C-w>s<C-w>j
nmap <leader>k <C-w>s

"find bindings:
nmap <space> :CtrlPMixed<cr>
nmap <space><space> :CtrlP<cr>
nmap <space>b :CtrlPBuffer<cr>
nmap <space>c :Telescope git_commits<cr>
nmap <space>f :CtrlPFunky<cr>
nmap <space>t :CtrlPTag<cr>
nmap <space>m :Maps<cr> 
nmap <space>l :Lines<cr> 

"term commands:
"unmap \f
nmap \ :OneTerm<cr>
nmap \\ :Telescope<cr>
nnoremap \] :Telescope find_files<cr> 
nmap \b :Buffers<cr>
nmap \c :Telescope git_commits<cr>
nmap \m :Telescope symbols<cr>
nmap \s :Telescope symbols<cr>
nmap \\t :Telescope tags<cr>
nmap \t :OneTerm term<cr>
nmap \r :OneTerm ranger<cr>
nmap \g :Telescope live_grep<cr> 

"crayz motion:
"windows:
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-n> :q<cr>

"tabs:
map <C-f> :tabnext<cr>
map <C-s> :tabprevious<cr>
map <C-v> :tabclose<cr>
"buffers:
map <C-d> :bnext<cr>
map <C-a> :bprevious<cr>
map <C-c> :Bclose<cr>

"file actions:
" nmap <tab>d :call CocActionAsync('doHover')<cr>
" nmap <tab>rn <Plug>(coc-rename)
" nmap <tab>a <Plug>(coc-codeaction-seleccted)
" nmap <tab>qf <Plug>(coc-fix-current)
" nmap <tab>cl <Plug>(coc-codelens-action)

"others:
inoremap jk <Esc>
nnoremap <cr><cr> A<cr><Esc>
nmap s :HopAnywhere<cr>
nmap ss :HopWord<cr>

lua << EOF
require'hop'.setup()
    require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    }
    require('Comment').setup()
    require("nvim-tree").setup()
    require'lspconfig'.pyright.setup{}



-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<tab>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<tab>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<tab>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<tab>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<tab>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<tab>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<tab>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<tab>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<tab>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

local lspconfig = require('lspconfig')

vim.g.coq_settings = { auto_start = 'shut-up' }

-- Enable some language servers with the additional completion capabilities offered by coq_nvim
local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup(require('coq').lsp_ensure_capabilities({
    on_attach = on_attach
  }))
end
EOF
