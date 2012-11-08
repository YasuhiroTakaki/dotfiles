" tabline always on
set showtabline=2
" if gui_running, then use cui tabline
"set guioptions-=e

function! MakeTabLine() "{{{
  let titles = map(range(1, tabpagenr('$')), 's:tabpage_label(v:val)')
  let sep = ' '  " space
  let tabpages = join(titles, sep) . sep . '%#TabLineFill#%T'
  let info = ''  " use some info

  "FoldCCnavi
  if exists('*FoldCCnavi')
    let info .= '%#TabLineInfo#'.substitute(FoldCCnavi()[-60:],'\s>\s','%#TabLineFill#> %#TabLineInfo#','g').'%0* '
  endif

  " view current dir
  let info .= '['.fnamemodify(getcwd(), ":~") . ']'

  return tabpages . '%=' . info  " left:tab info / right:info
endfunction "}}}

function! s:tabpage_label(tabpagenr) "{{{
  let title = gettabvar(a:tabpagenr, 'title') "
  if title !=# ''
    return title
  endif

  " get tab list
  let bufnrs = tabpagebuflist(a:tabpagenr)

  " if current tab, then set hilight
  let hi = a:tabpagenr is tabpagenr() ? '%#TabLineSel#' : '%#TabLine#'

  " show tab num
  let no = len(bufnrs)
  if no is 1
    let no = ''
  endif
  " edit buf
  let mod = len(filter(copy(bufnrs), 'getbufvar(v:val, "&modified")')) ? '+' : ''
  let nomod = (no . mod) ==# '' ? '' : '['.no.mod.']'

  let curbufnr = bufnrs[tabpagewinnr(a:tabpagenr) - 1]  " tabpagewinnr() は 1 origin
  let fname = fnamemodify(bufname(curbufnr), ':t')
  let fname = fname is '' ? 'No title' : fname "Null buffer name set No title

  let label = fname . nomod

"  return '%' . a:tabpagenr . 'T' . hi .a:tabpagenr.': '. curbufnr.'-' . label . '%T%#TabLineFill#'
  return '%' . a:tabpagenr . 'T' . hi .a:tabpagenr.': '. label . '%T%#TabLineFill#'
endfunction "}}}

set tabline=%!MakeTabLine()

