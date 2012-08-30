" Startup when lunching vim
let g:neocomplcache_enable_at_startup = 1
" Max list num (initial num: 100)
let g:neocomplcache_max_list = 20
" Completion start length (initial num: 2)
let g:neocomplcache_auto_completion_start_length = 2
" Ignore Upper/Lower case
let g:neocomplcache_enable_ignore_case = 1
" Smart case
let g:neocomplcache_enable_smart_case = 0
" Unspecify matching
let g:neocomplcache_enable_camel_case_completion = 0
let g:neocomplcache_enable_underbar_completion = 0
" Neoconplcache chache file
if has('win32') + has('win64')
  let g:neocomplcache_temporary_dir = 'D:/.neoconcache'
elseif has('unix')
  let g:neocomplcache_temporary_dir = '~/.neoconcache'
endif

