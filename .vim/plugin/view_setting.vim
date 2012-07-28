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
set tabstop=4
set shiftwidth=4

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

