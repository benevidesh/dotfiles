" from: https://patdavid.net/2019/09/setting-up-jrnl-for-journaling/
if exists("b:current_syntax")
    finish
endif

syntax match jtag "@.\{-}\w\+"
syntax match jproj "+.\{-}\w\+"
syntax match jyear /\[\d\{4}-\d\d-\d\d \d\d:\d\d\]/

syntax region entryLine start=/\d\{4}-\d\d-\d\d \d\d:\d\d/ end=/\]/ contains=jyear

highlight def jtag guifg=Green
highlight def jproj guifg=Green
highlight def jyear guifg=Gray
highlight def entryLine ctermfg=250 guifg=Gray

let b:current_syntax = "jrnl"
