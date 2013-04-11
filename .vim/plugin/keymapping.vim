" Keymapping

""" Prefix
noremap [TABCMD]  <nop>
nmap     <leader>t [TABCMD]

noremap [GITCMD]  <nop>
nmap     <leader>g [GITCMD]

noremap [MEMOCMD]  <nop>
nmap     <leader>m [MEMOCMD]

noremap [WINCMD]  <nop>
nmap     <leader>w [WINCMD]

noremap [OCCCMD]  <nop>
nmap     <leader>o [OCCCMD]

""" MAP
" Page {
    noremap <S-j> 5j
    noremap <S-k> 5k
    noremap <c-j> <c-d>
    noremap <c-k> <c-u>
" }

" End hilight {
    nnoremap <silent> <Esc><Esc> :<c-u>noh<cr>
" }

" Explorer(Nerdtree) {
    nnoremap <silent> <leader>e :<c-u>NERDTreeToggle<cr>
" }

" Bracket {
    inoremap { {}<LEFT>
    inoremap [ []<LEFT>
    inoremap ( ()<LEFT>
" }

" Function list {
    nnoremap <silent> <c-f> :<c-u>Tlist<cr>
" }

" Window control {
    nnoremap <silent> [WINCMD]v :<c-u>vs<cr>
    nnoremap <silent> [WINCMD]h :<c-u>sp<cr>
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
    nnoremap <silent> [GITCMD]k :<c-u>Gitv --all<cr>
    nnoremap <silent> [GITCMD]f :<c-u>Gitv!<cr>
" }

" MEMO Command {
    map <silent> [MEMOCMD]n :MemoNew<cr>
    map <silent> [MEMOCMD]l :MemoList<cr>
    map <silent> [MEMOCMD]g :MemoGrep<cr>
    nmap <silent> [MEMOCMD]f :CommandT g:memolist_path<cr><f5>
" }

" NEOSNIPPETS Command{
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" }
