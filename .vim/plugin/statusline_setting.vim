  set statusline=%<     " 
  set statusline+=[%n]  " Buffer number
  set statusline+=%m    " %m Edit flag
  set statusline+=%r    " %r RO flag
  set statusline+=%h    " %h Help buffer flag
  set statusline+=%w    " %w Preview window flag
"  set statusline+=%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}  " fenc / ff
"  set statusline+=%y    " File type
  set statusline+=\     " Space
if winwidth(0) >= 130
  set statusline+=%F    " Full path
else
  set statusline+=%t    " File name only
endif
  set statusline+=%=    " Move right side
  set statusline+=%{fugitive#statusline()}  " Show the current git branch
  set statusline+=\ \   " Two spaces
  set statusline+=%1l   " Current cursor line
  set statusline+=/
  set statusline+=%L    " Total line number
  set statusline+=,
  set statusline+=%c    " Current corsor position
  set statusline+=%V    " 
  set statusline+=\ \   " Two spaces
  set statusline+=%P    " Current page position
