
"python:
" au FileType python inoremap <tab>p print (
" au FileType python inoremap <tab>i import 
" au FileType python inoremap <tab>f for i in 
" au FileType python nnoremap <tab>r  :update<CR>:exec '!python3' shellescape(@%, 1)<CR>

"java:
" au FileType java inoremap <tab>p System.out.println(
" au FileType java inoremap <tab>i import 
" au FileType java inoremap <tab>f for(int i = 0; i < ; i++){}<esc>hhhhhhhi
"TODO java runner
