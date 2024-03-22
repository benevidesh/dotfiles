let g:vimtex_compiler_clean_paths = ['bbl']

augroup vimtex_event_1
    au!
    au User VimtexEventQuit     VimtexClean!
augroup END

