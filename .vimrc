set nocompatible

"-------------------------------------------
" Compatible runtime path setting
"
if isdirectory($HOME . '/.vim')
   let $MY_VIMRUNTIME = $HOME.'/.vim'
elseif isdirectory($HOME . '\vimfiles')
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
Bundle "tpope/vim-fugitive"
Bundle "thinca/vim-tabrecent"
Bundle "glidenote/memolist.vim"
Bundle "vim-scripts/taglist.vim"
Bundle "wincent/Command-T"

filetype plugin indent on

"-------------------------------------------
" Read setting files
"
for pluginfile in split(glob($VIM.'/plugin/*'), '\n')
   source pluginfile
endfor
