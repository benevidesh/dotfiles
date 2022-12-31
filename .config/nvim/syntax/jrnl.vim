if exists("b:current_syntax")
    finish
endif

syntax match jtag "@.\{-}\w\+"
syntax match jyear /\[\d\{4}-\d\d-\d\d \d\d:\d\d:\d\d [AP]M\]/

syntax region entryLine start=/\[\d\{4}-\d\d-\d\d \d\d:\d\d/ end=/$/ contains=jyear

highlight def link jtag Constant
highlight def link jyear Comment
highlight def entryLine ctermfg=black guifg=black gui=bold

let b:current_syntax = "jrnl"

