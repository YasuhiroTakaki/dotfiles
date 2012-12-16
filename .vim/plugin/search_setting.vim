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
autocmd QuickfixCmdPost grep,make copen

""" Tags file
set tags+=~/.tags/android_sdk
set tags+=~/.tags/java6
set tags+=$TOP/tags

