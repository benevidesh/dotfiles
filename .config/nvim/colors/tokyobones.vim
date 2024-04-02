if exists('g:colors_name')
    highlight clear
endif

let g:colors_name = 'tokyobones'

if has('nvim') && !bones#_compat(g:colors_name)
    lua require("zenbones.util").apply_colorscheme()
    finish
endif

let s:italics = (&t_ZH != '' && &t_ZH != '[7m') || has('gui_running') || has('nvim')

if &background ==# 'dark'
    " dark start
    " This codeblock is auto-generated by shipwright.nvim
    let g:terminal_color_0 = '#1A1B26'
    let g:terminal_color_1 = '#F77890'
    let g:terminal_color_2 = '#74DBCB'
    let g:terminal_color_3 = '#E1B068'
    let g:terminal_color_4 = '#7BA2F7'
    let g:terminal_color_5 = '#BB9BF7'
    let g:terminal_color_6 = '#2BC4DE'
    let g:terminal_color_7 = '#C0CAF5'
    let g:terminal_color_8 = '#36384D'
    let g:terminal_color_9 = '#F98EA0'
    let g:terminal_color_10 = '#6DE5D3'
    let g:terminal_color_11 = '#F2BA64'
    let g:terminal_color_12 = '#90AFFA'
    let g:terminal_color_13 = '#C6ACFA'
    let g:terminal_color_14 = '#74DBCB'
    let g:terminal_color_15 = '#7E98EB'
    highlight Normal guifg=#C0CAF5 guibg=#1A1B26 guisp=NONE gui=NONE cterm=NONE
    highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight BufferVisible guifg=#D2D9F8 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight BufferVisibleIndex guifg=#D2D9F8 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight BufferVisibleSign guifg=#D2D9F8 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight CocMarkdownLink guifg=#2BC4DE guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight ColorColumn guifg=NONE guibg=#4E402E guisp=NONE gui=NONE cterm=NONE
    highlight! link LspReferenceRead ColorColumn
    highlight! link LspReferenceText ColorColumn
    highlight! link LspReferenceWrite ColorColumn
    highlight Comment guifg=#65677D guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight Conceal guifg=#6085E7 guibg=NONE guisp=NONE gui=bold,italic cterm=bold,italic
    highlight Constant guifg=#7592EA guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight! link TroubleSource Constant
    highlight! link WhichKeyValue Constant
    highlight! link helpOption Constant
    highlight Cursor guifg=#1A1B26 guibg=#CED6F7 guisp=NONE gui=NONE cterm=NONE
    highlight! link TermCursor Cursor
    highlight CursorLine guifg=NONE guibg=#222330 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocMenuSel CursorLine
    highlight! link CursorColumn CursorLine
    highlight CursorLineNr guifg=#C0CAF5 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Delimiter guifg=#787A94 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link markdownLinkTextDelimiter Delimiter
    highlight! link NotifyERRORIcon DiagnosticError
    highlight! link NotifyERRORTitle DiagnosticError
    highlight DiagnosticHint guifg=#BB9BF7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NotifyDEBUGIcon DiagnosticHint
    highlight! link NotifyDEBUGTitle DiagnosticHint
    highlight! link NotifyTRACEIcon DiagnosticHint
    highlight! link NotifyTRACETitle DiagnosticHint
    highlight DiagnosticInfo guifg=#7BA2F7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NotifyINFOIcon DiagnosticInfo
    highlight! link NotifyINFOTitle DiagnosticInfo
    highlight DiagnosticOk guifg=#74DBCB guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticSignError guifg=#F77890 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocErrorSign DiagnosticSignError
    highlight DiagnosticSignHint guifg=#BB9BF7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocHintSign DiagnosticSignHint
    highlight DiagnosticSignInfo guifg=#7BA2F7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocInfoSign DiagnosticSignInfo
    highlight DiagnosticSignOk guifg=#74DBCB guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticSignWarn guifg=#E1B068 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocWarningSign DiagnosticSignWarn
    highlight DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=#F77890 gui=undercurl cterm=undercurl
    highlight! link CocErrorHighlight DiagnosticUnderlineError
    highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=#BB9BF7 gui=undercurl cterm=undercurl
    highlight! link CocHintHighlight DiagnosticUnderlineHint
    highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=#7BA2F7 gui=undercurl cterm=undercurl
    highlight! link CocInfoHighlight DiagnosticUnderlineInfo
    highlight DiagnosticUnderlineOk guifg=NONE guibg=NONE guisp=#74DBCB gui=undercurl cterm=undercurl
    highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=#E1B068 gui=undercurl cterm=undercurl
    highlight! link CocWarningHighlight DiagnosticUnderlineWarn
    highlight DiagnosticVirtualTextError guifg=#F77890 guibg=#292223 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocErrorVirtualText DiagnosticVirtualTextError
    highlight DiagnosticVirtualTextHint guifg=#BB9BF7 guibg=#252329 guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextInfo guifg=#7BA2F7 guibg=#222427 guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextOk guifg=#74DBCB guibg=#222424 guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextWarn guifg=#E1B068 guibg=#252322 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocWarningVirtualText DiagnosticVirtualTextWarn
    highlight! link DiagnosticDeprecated DiagnosticWarn
    highlight! link DiagnosticUnnecessary DiagnosticWarn
    highlight! link NotifyWARNIcon DiagnosticWarn
    highlight! link NotifyWARNTitle DiagnosticWarn
    highlight DiffAdd guifg=NONE guibg=#1D2F2C guisp=NONE gui=NONE cterm=NONE
    highlight DiffChange guifg=NONE guibg=#212C44 guisp=NONE gui=NONE cterm=NONE
    highlight DiffDelete guifg=NONE guibg=#412428 guisp=NONE gui=NONE cterm=NONE
    highlight DiffText guifg=#C0CAF5 guibg=#36466A guisp=NONE gui=NONE cterm=NONE
    highlight Directory guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Error guifg=#F77890 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link DiagnosticError Error
    highlight! link ErrorMsg Error
    highlight FlashBackdrop guifg=#65677D guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FlashLabel guifg=#C0CAF5 guibg=#1A4F97 guisp=NONE gui=NONE cterm=NONE
    highlight FloatBorder guifg=#767892 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FoldColumn guifg=#5F617E guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Folded guifg=#A3A5B7 guibg=#343648 guisp=NONE gui=NONE cterm=NONE
    highlight Function guifg=#C0CAF5 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link TroubleNormal Function
    highlight! link TroubleText Function
    highlight GitSignsAdd guifg=#74DBCB guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterAdd GitSignsAdd
    highlight GitSignsChange guifg=#7BA2F7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterChange GitSignsChange
    highlight GitSignsDelete guifg=#F77890 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterDelete GitSignsDelete
    highlight IblIndent guifg=#282935 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight IblScope guifg=#444657 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight Identifier guifg=#98ABEF guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight IncSearch guifg=#1A1B26 guibg=#B38DF6 guisp=NONE gui=bold cterm=bold
    highlight! link CurSearch IncSearch
    highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight LineNr guifg=#5F617E guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocCodeLens LineNr
    highlight! link LspCodeLens LineNr
    highlight! link SignColumn LineNr
    highlight MoreMsg guifg=#74DBCB guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link Question MoreMsg
    highlight! link NnnNormalNC NnnNormal
    highlight! link NnnVertSplit NnnWinSeparator
    highlight NonText guifg=#535570 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link EndOfBuffer NonText
    highlight! link Whitespace NonText
    highlight NormalFloat guifg=NONE guibg=#2C2D3D guisp=NONE gui=NONE cterm=NONE
    highlight Number guifg=#2BC4DE guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link Boolean Number
    highlight Pmenu guifg=NONE guibg=#2C2D3D guisp=NONE gui=NONE cterm=NONE
    highlight PmenuSbar guifg=NONE guibg=#585A76 guisp=NONE gui=NONE cterm=NONE
    highlight PmenuSel guifg=NONE guibg=#43455B guisp=NONE gui=NONE cterm=NONE
    highlight PmenuThumb guifg=NONE guibg=#80829B guisp=NONE gui=NONE cterm=NONE
    highlight PreProc guifg=#BB9BF7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight Search guifg=#C0CAF5 guibg=#6E20BD guisp=NONE gui=NONE cterm=NONE
    highlight! link CocSearch Search
    highlight! link MatchParen Search
    highlight! link Sneak Search
    highlight SneakLabelMask guifg=#BB9BF7 guibg=#BB9BF7 guisp=NONE gui=NONE cterm=NONE
    highlight Special guifg=#7BA2F7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link WhichKeyGroup Special
    highlight SpecialComment guifg=#65677D guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link markdownUrl SpecialComment
    highlight SpecialKey guifg=#535570 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight SpellBad guifg=#E18695 guibg=NONE guisp=NONE gui=undercurl cterm=undercurl
    highlight! link CocSelectedText SpellBad
    highlight SpellCap guifg=#E18695 guibg=NONE guisp=NONE gui=undercurl cterm=undercurl
    highlight! link SpellLocal SpellCap
    highlight SpellRare guifg=#E18695 guibg=NONE guisp=NONE gui=undercurl cterm=undercurl
    highlight Statement guifg=#BB9BF7 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link WhichKey Statement
    highlight StatusLine guifg=#C0CAF5 guibg=#303142 guisp=NONE gui=NONE cterm=NONE
    highlight! link TabLine StatusLine
    highlight StatusLineNC guifg=#D2D9F8 guibg=#242532 guisp=NONE gui=NONE cterm=NONE
    highlight! link TabLineFill StatusLineNC
    highlight TSConstBuiltin guifg=#74DBCB guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight TSConstant guifg=#FF9E64 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight TSKeyword guifg=#BB9BF7 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight TabLineSel guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link BufferCurrent TabLineSel
    highlight Title guifg=#C0CAF5 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Todo guifg=NONE guibg=NONE guisp=NONE gui=bold,underline cterm=bold,underline
    highlight Type guifg=#9394AA guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link helpSpecial Type
    highlight! link markdownCode Type
    highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight Visual guifg=NONE guibg=#2C4075 guisp=NONE gui=NONE cterm=NONE
    highlight WarningMsg guifg=#E1B068 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link DiagnosticWarn WarningMsg
    highlight! link gitcommitOverflow WarningMsg
    highlight WhichKeySeparator guifg=#5F617E guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight WildMenu guifg=#1A1B26 guibg=#BB9BF7 guisp=NONE gui=NONE cterm=NONE
    highlight! link SneakLabel WildMenu
    highlight WinSeparator guifg=#5F617E guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link VertSplit WinSeparator
    highlight diffAdded guifg=#74DBCB guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight diffChanged guifg=#7BA2F7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight diffFile guifg=#E1B068 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight diffIndexLine guifg=#E1B068 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight diffLine guifg=#BB9BF7 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight diffNewFile guifg=#74DBCB guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight diffOldFile guifg=#F77890 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight diffRemoved guifg=#F77890 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight helpHyperTextEntry guifg=#9394AA guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight helpHyperTextJump guifg=#98ABEF guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight lCursor guifg=#1A1B26 guibg=#5C82E6 guisp=NONE gui=NONE cterm=NONE
    highlight! link TermCursorNC lCursor
    highlight markdownLinkText guifg=#98ABEF guibg=NONE guisp=NONE gui=underline cterm=underline
    " dark end

    if !s:italics
        " no italics dark start
        " This codeblock is auto-generated by shipwright.nvim
        highlight Boolean gui=NONE cterm=NONE
        highlight Comment gui=NONE cterm=NONE
        highlight Constant gui=NONE cterm=NONE
        highlight SpecialKey gui=NONE cterm=NONE
        highlight TSKeyword gui=NONE cterm=NONE
        highlight TroubleSource gui=NONE cterm=NONE
        highlight WhichKeyValue gui=NONE cterm=NONE
        highlight diffNewFile gui=NONE cterm=NONE
        highlight diffOldFile gui=NONE cterm=NONE
        highlight helpOption gui=NONE cterm=NONE
        " no italics dark end
    endif
else
    " light start
    " This codeblock is auto-generated by shipwright.nvim
    let g:terminal_color_0 = '#D6D7DC'
    let g:terminal_color_1 = '#8B4351'
    let g:terminal_color_2 = '#34645D'
    let g:terminal_color_3 = '#8F5E14'
    let g:terminal_color_4 = '#34548C'
    let g:terminal_color_5 = '#5A4A79'
    let g:terminal_color_6 = '#176775'
    let g:terminal_color_7 = '#333A57'
    let g:terminal_color_8 = '#ADB0BD'
    let g:terminal_color_9 = '#7E3242'
    let g:terminal_color_10 = '#26554F'
    let g:terminal_color_11 = '#794E0D'
    let g:terminal_color_12 = '#26467A'
    let g:terminal_color_13 = '#503875'
    let g:terminal_color_14 = '#34645D'
    let g:terminal_color_15 = '#56618D'
    highlight Normal guifg=#333A57 guibg=#D6D7DC guisp=NONE gui=NONE cterm=NONE
    highlight Bold guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight BufferVisible guifg=#5F6B9B guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight BufferVisibleIndex guifg=#5F6B9B guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight BufferVisibleSign guifg=#5F6B9B guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight CocMarkdownLink guifg=#176775 guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight ColorColumn guifg=NONE guibg=#DBAD85 guisp=NONE gui=NONE cterm=NONE
    highlight! link LspReferenceRead ColorColumn
    highlight! link LspReferenceText ColorColumn
    highlight! link LspReferenceWrite ColorColumn
    highlight Comment guifg=#7C7E89 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight Conceal guifg=#56618D guibg=NONE guisp=NONE gui=bold,italic cterm=bold,italic
    highlight Constant guifg=#5B6694 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight! link TroubleSource Constant
    highlight! link WhichKeyValue Constant
    highlight! link helpOption Constant
    highlight Cursor guifg=#D6D7DC guibg=#333A57 guisp=NONE gui=NONE cterm=NONE
    highlight! link TermCursor Cursor
    highlight CursorLine guifg=NONE guibg=#CDCED4 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocMenuSel CursorLine
    highlight! link CursorColumn CursorLine
    highlight CursorLineNr guifg=#333A57 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Delimiter guifg=#737686 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link markdownLinkTextDelimiter Delimiter
    highlight! link NotifyERRORIcon DiagnosticError
    highlight! link NotifyERRORTitle DiagnosticError
    highlight DiagnosticHint guifg=#5A4A79 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NotifyDEBUGIcon DiagnosticHint
    highlight! link NotifyDEBUGTitle DiagnosticHint
    highlight! link NotifyTRACEIcon DiagnosticHint
    highlight! link NotifyTRACETitle DiagnosticHint
    highlight DiagnosticInfo guifg=#34548C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link NotifyINFOIcon DiagnosticInfo
    highlight! link NotifyINFOTitle DiagnosticInfo
    highlight DiagnosticOk guifg=#34645D guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticSignError guifg=#8B4351 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocErrorSign DiagnosticSignError
    highlight DiagnosticSignHint guifg=#5A4A79 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocHintSign DiagnosticSignHint
    highlight DiagnosticSignInfo guifg=#34548C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocInfoSign DiagnosticSignInfo
    highlight DiagnosticSignOk guifg=#34645D guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticSignWarn guifg=#8F5E14 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocWarningSign DiagnosticSignWarn
    highlight DiagnosticUnderlineError guifg=NONE guibg=NONE guisp=#8B4351 gui=undercurl cterm=undercurl
    highlight! link CocErrorHighlight DiagnosticUnderlineError
    highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE guisp=#5A4A79 gui=undercurl cterm=undercurl
    highlight! link CocHintHighlight DiagnosticUnderlineHint
    highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE guisp=#34548C gui=undercurl cterm=undercurl
    highlight! link CocInfoHighlight DiagnosticUnderlineInfo
    highlight DiagnosticUnderlineOk guifg=NONE guibg=NONE guisp=#34645D gui=undercurl cterm=undercurl
    highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE guisp=#8F5E14 gui=undercurl cterm=undercurl
    highlight! link CocWarningHighlight DiagnosticUnderlineWarn
    highlight DiagnosticVirtualTextError guifg=#8B4351 guibg=#E3C5C9 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocErrorVirtualText DiagnosticVirtualTextError
    highlight DiagnosticVirtualTextHint guifg=#5A4A79 guibg=#D0C8E2 guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextInfo guifg=#34548C guibg=#C4CCE2 guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextOk guifg=#34645D guibg=#9FD7CD guisp=NONE gui=NONE cterm=NONE
    highlight DiagnosticVirtualTextWarn guifg=#8F5E14 guibg=#E4C6B0 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocWarningVirtualText DiagnosticVirtualTextWarn
    highlight! link DiagnosticDeprecated DiagnosticWarn
    highlight! link DiagnosticUnnecessary DiagnosticWarn
    highlight! link NotifyWARNIcon DiagnosticWarn
    highlight! link NotifyWARNTitle DiagnosticWarn
    highlight DiffAdd guifg=NONE guibg=#A9CEC7 guisp=NONE gui=NONE cterm=NONE
    highlight DiffChange guifg=NONE guibg=#C0C6D8 guisp=NONE gui=NONE cterm=NONE
    highlight DiffDelete guifg=NONE guibg=#DFBEC3 guisp=NONE gui=NONE cterm=NONE
    highlight DiffText guifg=#333A57 guibg=#9BA6C2 guisp=NONE gui=NONE cterm=NONE
    highlight Directory guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Error guifg=#8B4351 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link DiagnosticError Error
    highlight! link ErrorMsg Error
    highlight FlashBackdrop guifg=#7C7E89 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FlashLabel guifg=#333A57 guibg=#95ADE8 guisp=NONE gui=NONE cterm=NONE
    highlight FloatBorder guifg=#626573 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight FoldColumn guifg=#888B99 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Folded guifg=#464953 guibg=#AEB0BA guisp=NONE gui=NONE cterm=NONE
    highlight Function guifg=#333A57 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link TroubleNormal Function
    highlight! link TroubleText Function
    highlight GitSignsAdd guifg=#34645D guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterAdd GitSignsAdd
    highlight GitSignsChange guifg=#34548C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterChange GitSignsChange
    highlight GitSignsDelete guifg=#8B4351 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link GitGutterDelete GitSignsDelete
    highlight IblIndent guifg=#C8C9CE guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight IblScope guifg=#A1A3AC guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight Identifier guifg=#4A537A guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight IncSearch guifg=#D6D7DC guibg=#8271A4 guisp=NONE gui=bold cterm=bold
    highlight! link CurSearch IncSearch
    highlight Italic guifg=NONE guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight LineNr guifg=#888B99 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link CocCodeLens LineNr
    highlight! link LspCodeLens LineNr
    highlight! link SignColumn LineNr
    highlight MoreMsg guifg=#34645D guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link Question MoreMsg
    highlight! link NnnNormalNC NnnNormal
    highlight! link NnnVertSplit NnnWinSeparator
    highlight NonText guifg=#9B9DA9 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link EndOfBuffer NonText
    highlight! link Whitespace NonText
    highlight NormalFloat guifg=NONE guibg=#C2C3CB guisp=NONE gui=NONE cterm=NONE
    highlight Number guifg=#176775 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link Boolean Number
    highlight Pmenu guifg=NONE guibg=#BCBEC6 guisp=NONE gui=NONE cterm=NONE
    highlight PmenuSbar guifg=NONE guibg=#9395A2 guisp=NONE gui=NONE cterm=NONE
    highlight PmenuSel guifg=NONE guibg=#A6A8B3 guisp=NONE gui=NONE cterm=NONE
    highlight PmenuThumb guifg=NONE guibg=#EDEEF0 guisp=NONE gui=NONE cterm=NONE
    highlight PreProc guifg=#5A4A79 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight Search guifg=#333A57 guibg=#B3A9C9 guisp=NONE gui=NONE cterm=NONE
    highlight! link CocSearch Search
    highlight! link MatchParen Search
    highlight! link Sneak Search
    highlight SneakLabelMask guifg=#5A4A79 guibg=#5A4A79 guisp=NONE gui=NONE cterm=NONE
    highlight Special guifg=#34548C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link WhichKeyGroup Special
    highlight SpecialComment guifg=#7C7E89 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link markdownUrl SpecialComment
    highlight SpecialKey guifg=#9B9DA9 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight SpellBad guifg=#7F4A54 guibg=NONE guisp=#8B4351 gui=undercurl cterm=undercurl
    highlight! link CocSelectedText SpellBad
    highlight SpellCap guifg=#7F4A54 guibg=NONE guisp=#A04E5F gui=undercurl cterm=undercurl
    highlight! link SpellLocal SpellCap
    highlight SpellRare guifg=#7F4A54 guibg=NONE guisp=#8F5E14 gui=undercurl cterm=undercurl
    highlight Statement guifg=#5A4A79 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link WhichKey Statement
    highlight StatusLine guifg=#333A57 guibg=#B9BBC3 guisp=NONE gui=NONE cterm=NONE
    highlight! link TabLine StatusLine
    highlight StatusLineNC guifg=#5F6B9B guibg=#C8C9CF guisp=NONE gui=NONE cterm=NONE
    highlight! link TabLineFill StatusLineNC
    highlight TSConstBuiltin guifg=#34645D guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight TSConstant guifg=#965127 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight TSKeyword guifg=#5A4A79 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight TabLineSel guifg=NONE guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight! link BufferCurrent TabLineSel
    highlight Title guifg=#333A57 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight Todo guifg=NONE guibg=NONE guisp=NONE gui=bold,underline cterm=bold,underline
    highlight Type guifg=#484F6B guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link helpSpecial Type
    highlight! link markdownCode Type
    highlight Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight Visual guifg=NONE guibg=#BBC0D8 guisp=NONE gui=NONE cterm=NONE
    highlight WarningMsg guifg=#8F5E14 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link DiagnosticWarn WarningMsg
    highlight! link gitcommitOverflow WarningMsg
    highlight WhichKeySeparator guifg=#888B99 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight WildMenu guifg=#D6D7DC guibg=#5A4A79 guisp=NONE gui=NONE cterm=NONE
    highlight! link SneakLabel WildMenu
    highlight WinSeparator guifg=#888B99 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight! link VertSplit WinSeparator
    highlight diffAdded guifg=#34645D guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight diffChanged guifg=#34548C guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight diffFile guifg=#8F5E14 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight diffIndexLine guifg=#8F5E14 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight diffLine guifg=#5A4A79 guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight diffNewFile guifg=#34645D guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight diffOldFile guifg=#8B4351 guibg=NONE guisp=NONE gui=italic cterm=italic
    highlight diffRemoved guifg=#8B4351 guibg=NONE guisp=NONE gui=NONE cterm=NONE
    highlight helpHyperTextEntry guifg=#484F6B guibg=NONE guisp=NONE gui=bold cterm=bold
    highlight helpHyperTextJump guifg=#4A537A guibg=NONE guisp=NONE gui=underline cterm=underline
    highlight lCursor guifg=#D6D7DC guibg=#525C87 guisp=NONE gui=NONE cterm=NONE
    highlight! link TermCursorNC lCursor
    highlight markdownLinkText guifg=#4A537A guibg=NONE guisp=NONE gui=underline cterm=underline
    " light end

    if !s:italics
        " no italics light start
        " This codeblock is auto-generated by shipwright.nvim
        highlight Boolean gui=NONE cterm=NONE
        highlight Comment gui=NONE cterm=NONE
        highlight Constant gui=NONE cterm=NONE
        highlight SpecialKey gui=NONE cterm=NONE
        highlight TSKeyword gui=NONE cterm=NONE
        highlight TroubleSource gui=NONE cterm=NONE
        highlight WhichKeyValue gui=NONE cterm=NONE
        highlight diffNewFile gui=NONE cterm=NONE
        highlight diffOldFile gui=NONE cterm=NONE
        highlight helpOption gui=NONE cterm=NONE
        " no italics light end
    endif
endif

if has('terminal')
    highlight! link StatusLineTerm StatusLine
    highlight! link StatusLineTermNC StatusLineNC
    let g:terminal_ansi_colors = [
                \ g:terminal_color_0,
                \ g:terminal_color_1,
                \ g:terminal_color_2,
                \ g:terminal_color_3,
                \ g:terminal_color_4,
                \ g:terminal_color_5,
                \ g:terminal_color_6,
                \ g:terminal_color_7,
                \ g:terminal_color_8,
                \ g:terminal_color_9,
                \ g:terminal_color_10,
                \ g:terminal_color_11,
                \ g:terminal_color_12,
                \ g:terminal_color_13,
                \ g:terminal_color_14,
                \ g:terminal_color_15
                \ ]
endif
