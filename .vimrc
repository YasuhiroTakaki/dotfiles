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
set tags+=~/.tags/java
set tags+=${TOP}/tags

"-------------------------------------------
" View setting
"
""" Editor
set number
set showmatch matchtime=1
set cindent
set title
set display=lastline
set list
set lines=50
set columns=140

""" Hilight
set listchars=tab:^\ ,trail:~
if &t_Co > 2 || has('gui_running')
   syntax on
endif

""" Vim script
au BufNewFile,BufRead *.vim*	setf vim

""" Command line
set cmdheight=1
set laststatus=2
set showcmd

""" Color scheme
colorscheme desert
"colorscheme zenburn
"colorscheme Default

""" Status line
if has('iconv')
"  set statusline=%<%f\ %m\ %r%h%w%{'['.(&fenc!=''?&fenc:&enc).(&bomb?':BOM':'').']['.&ff.']'}%=[0x%{FencB()}]\ (%v,%l)/%L%8P\ 
else
"  set statusline=%<%f\ %m\ %r%h%w%{'['.(&fenc!=''?&fenc:&enc).(&bomb?':BOM':'').']['.&ff.']'}%=\ (%v,%l)/%L%8P\ 
endif

if has('syntax')
  augroup InsertHook
  autocmd!
"  autocmd InsertEnter * call SetStatusLine('Enter')
"  autocmd InsertLeave * call SetStatusLine('Leave')
  augroup END
endif

"-------------------------------------------
" Pulgin setting
"
"source ~/.vim/.vim.plugin

"-------------------------------------------
" Key Mapping
"
"source ~/.vim/.vim.keymap

"-------------------------------------------
" Function include
"
"source ~/.vim/.vim.func


