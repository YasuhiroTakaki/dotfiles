set nocompatible

filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()
 
" for git
Bundle "tpope/vim-fugitive"
Bundle "thinca/vim-tabrecent"

" Utility
Bundle "glidenote/memolist.vim"
Bundle "git://git.wincent.com/command-t.git"
 
filetype plugin indent on

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
" System setting
"
""" Backup
set nowritebackup
set nobackup

""" Clipboard
set clipboard+=unnamed

""" Input
set nrformats-=octal
set timeoutlen=3500
set virtualedit=block
set wildmenu

""" Others
set hidden
set history=50
set autoread

"" Read plugin files
for pluginfile in split(glob($VIM.'/plugin/*'), '\n')
   source pluginfile
endfor
