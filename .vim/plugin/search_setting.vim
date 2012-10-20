"-------------------------------------------
" Search setting
"
" if case setting is needed, set in .local file.
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch
set grepprg=grep\ -nHr
autocmd QuickfixCmdPost grep,make copen

""" Tags file
set tags+=~/.tags/android_sdk
set tags+=~/.tags/java6
set tags+=$TOP/tags

