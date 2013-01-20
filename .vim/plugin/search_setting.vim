"-------------------------------------------
" Search setting
"
" if case setting is needed, set in .local file.
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch
set grepprg=grep\ -nHrI\ --exclude-dir=.git\ --exclude-dir=.repo\ --exclude-from=$HOME/.vim/plugin/exclude_grep.lst
autocmd QuickfixCmdPost grep,make if len(getqflist()) != 0 | copen | endif

""" Tags file
set tags+=~/.tags/android_sdk
set tags+=~/.tags/java6
augroup set_tags
    autocmd!
    autocmd FileType c,cpp  set tags+=$TOP/.ccpp.tags
    autocmd FileType java   set tags+=$TOP/.java.tags
    autocmd FileType make   set tags+=$TOP/.make.tags
augroup END

