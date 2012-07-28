"" Keymapping

""" Prefix
noremap [TABCMD]  <nop>
nmap     <leader>t [TABCMD]

noremap [GITCMD]  <nop>
nmap     <leader>g [GITCMD]

noremap [MEMOCMD]  <nop>
nmap     <leader>m [MEMOCMD]

""" MAP
" Explorer(Opsplorer) {
    nnoremap <silent> <leader>e :<c-u>Opsplore<cr>
" }

" Bracket {
    inoremap { {}<LEFT>
    inoremap [ []<LEFT>
    inoremap ( ()<LEFT>
" }

" Function list {
    nnoremap <silent> <F11> :<c-u>Tlist<cr>
" }

" TAB Command {
    nnoremap <silent> [TABCMD]f :<c-u>tabfirst<cr>
    nnoremap <silent> [TABCMD]l :<c-u>tablast<cr>
    nnoremap <silent> [TABCMD]n :<c-u>tabnext<cr>
    nnoremap <silent> [TABCMD]N :<c-u>tabNext<cr>
    nnoremap <silent> [TABCMD]p :<c-u>tabprevious<cr>
    nnoremap <silent> [TABCMD]e :<c-u>tabedit<cr>
    nnoremap <silent> [TABCMD]c :<c-u>tabclose<cr>
    nnoremap <silent> [TABCMD]o :<c-u>tabonly<cr>
    nnoremap <silent> [TABCMD]s :<c-u>tabs<cr>
    nnoremap <silent> [TABCMD]r :<c-u>TabRecent<cr>
" }

" GIT Command {
    nnoremap <silent> [GITCMD]d :<c-u>Gdiff<cr>
    nnoremap <silent> [GITCMD]s :<c-u>Gstatus<cr>
    nnoremap <silent> [GITCMD]l :<c-u>Glog<cr>
    nnoremap <silent> [GITCMD]a :<c-u>Gwrite<cr>
    nnoremap <silent> [GITCMD]c :<c-u>Gcommit<cr>
    nnoremap <silent> [GITCMD]b :<c-u>Gblame<cr>
" }

" MEMO Command {
    map <silent> [MEMOCMD]n :MemoNew<cr>
    map <silent> [MEMOCMD]l :MemoList<cr>
    map <silent> [MEMOCMD]g :MemoGrep<cr>
    nmap <silent> [MEMOCMD]f :CommandT g:memolist_path<cr><f5>
" }

