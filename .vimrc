set nocompatible

"-------------------------------------------
" Compatible runtime path setting
"
if isdirectory($HOME . '/.vim')
   let $MY_VIMRUNTIME = $HOME.'/.vim'
elseif directory($HOME . '\vimfiles')
   let $MT_VIMRUNTIME = $HOME.'\vimfiles'
elseif isdirectory($VIM . '\vimfiles')
   let $MY_VIMRUNTIME = $VIM.'\vimfiles'
endif

"-------------------------------------------
" Vundle setting
"
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()
 
Bundle "Shougo/neocomplcache"
"Bundle "Shougo/vimshell"
Bundle "Shougo/vimproc"
Bundle "tpope/vim-fugitive"
Bundle "thinca/vim-tabrecent"
Bundle "glidenote/memolist.vim"
Bundle "vim-scripts/taglist.vim"
Bundle "wincent/Command-T"
"Bundle "vim-scripts/opsplorer"
Bundle "scrooloose/nerdtree"
Bundle "vim-scripts/matchit.zip"

filetype plugin indent on

"-------------------------------------------
" Read setting files
"
for pluginfile in split(glob($VIM.'/plugin/*'), '\n')
   source pluginfile
endfor

"-------------------------------------------
" Read local setting files
"
if filereadable(expand('$TOP/.vimrc.local'))
    source $TOP/.vimrc.local
endif

