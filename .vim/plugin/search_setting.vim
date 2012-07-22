"-------------------------------------------
" Search setting
"
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch
set grepprg=grep\ -nH
autocmd QuickfixCmdPost grep,make copen

""" Tags file
set tags+=~/.tags/android_sdk
set tags+=~/.tags/java6
set tags+=${TOP}/tags

