set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name="xcode-dark"

"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
hi Normal guifg=#ffffff guibg=#1f1f24 guisp=#1f1f24 gui=NONE ctermfg=15 ctermbg=235 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi Question -- no settings --
"hi EnumerationName -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi CTagsClass -- no settings --
"hi clear -- no settings --
hi IncSearch guifg=#1f1f24 guibg=#fff953 guisp=#fff953 gui=NONE ctermfg=235 ctermbg=227 cterm=NONE
hi WildMenu guifg=NONE guibg=#A1A6A8 guisp=#A1A6A8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi SignColumn guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi SpecialComment guifg=#92a1b1 guibg=NONE guisp=NONE gui=bold ctermfg=103 ctermbg=NONE cterm=bold
hi Typedef guifg=#75b492 guibg=NONE guisp=NONE gui=bold ctermfg=72 ctermbg=NONE cterm=bold
hi Title guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=bold ctermfg=189 ctermbg=235 cterm=bold
hi Folded guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi PreCondit guifg=#fc5fa3 guibg=NONE guisp=NONE gui=NONE ctermfg=205 ctermbg=NONE cterm=NONE
hi Include guifg=#fc5fa3 guibg=NONE guisp=NONE gui=bold ctermfg=205 ctermbg=NONE cterm=bold
hi Float guifg=#9686f5 guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#ffffff guibg=#23252b guisp=#23252b gui=bold ctermfg=15 ctermbg=235 cterm=bold
hi NonText guifg=#5E6C70 guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi DiffText guifg=#e2e4e5 guibg=#483635 guisp=#483635 gui=NONE ctermfg=254 ctermbg=238 cterm=NONE
hi ErrorMsg guifg=#6c7986 guibg=#483635 guisp=#483635 gui=NONE ctermfg=60 ctermbg=238 cterm=NONE
hi Debug guifg=#41b645 guibg=NONE guisp=NONE gui=bold ctermfg=71 ctermbg=NONE cterm=bold
hi PMenuSbar guifg=#e2e4e5 guibg=#302f30 guisp=#302f30 gui=NONE ctermfg=254 ctermbg=236 cterm=NONE
hi Identifier guifg=#aef37d guibg=NONE guisp=NONE gui=NONE ctermfg=156 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#9686f5 guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi Conditional guifg=#fc5fa3 guibg=NONE guisp=NONE gui=bold ctermfg=205 ctermbg=NONE cterm=bold
hi StorageClass guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Todo guifg=#92a1b1 guibg=NONE guisp=NONE gui=bold ctermfg=103 ctermbg=NONE cterm=bold
hi Special guifg=#9686f5 guibg=NONE guisp=NONE gui=bold ctermfg=105 ctermbg=NONE cterm=bold
hi LineNr guifg=#747478 guibg=NONE guisp=NONE gui=NONE ctermfg=243 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#ffffff guibg=#23252b guisp=#23252b gui=bold ctermfg=15 ctermbg=235 cterm=bold
hi Label guifg=#41b645 guibg=NONE guisp=NONE gui=bold ctermfg=71 ctermbg=NONE cterm=bold
hi PMenuSel guifg=#ffffff guibg=#1e59c6 guisp=#1e59c6 gui=NONE ctermfg=15 ctermbg=4 cterm=NONE
hi Search guifg=#ffffff guibg=#545557 guisp=#545557 gui=NONE ctermfg=15 ctermbg=240 cterm=NONE
hi Delimiter guifg=#fc5fa3 guibg=NONE guisp=NONE gui=NONE ctermfg=205 ctermbg=NONE cterm=NONE
hi Statement guifg=#fc5fa3 guibg=NONE guisp=NONE gui=bold ctermfg=205 ctermbg=NONE cterm=bold
hi SpellRare guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Comment guifg=#6c7986 guibg=NONE guisp=NONE gui=italic ctermfg=60 ctermbg=NONE cterm=NONE
hi Character guifg=#9686f5 guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#ffffff guibg=#b3b3b3 guisp=#b3b3b3 gui=NONE ctermfg=15 ctermbg=249 cterm=NONE
hi Number guifg=#9686f5 guibg=#1f1f24 guisp=#1f1f24 gui=NONE ctermfg=105 ctermbg=235 cterm=NONE
hi Boolean guifg=#fc5fa3 guibg=NONE guisp=NONE gui=bold ctermfg=205 ctermbg=NONE cterm=bold
hi Operator guifg=#fc5fa3 guibg=NONE guisp=NONE gui=bold ctermfg=205 ctermbg=NONE cterm=bold
hi CursorLine guifg=NONE guibg=#2f3238 guisp=#2f3238 gui=NONE ctermfg=NONE ctermbg=237 cterm=NONE
hi TabLineFill guifg=#ffffff guibg=#302f30 guisp=#302f30 gui=bold ctermfg=15 ctermbg=236 cterm=bold
hi WarningMsg guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi VisualNOS guifg=#192224 guibg=#F9F9FF guisp=#F9F9FF gui=underline ctermfg=235 ctermbg=189 cterm=underline
hi DiffDelete guifg=NONE guibg=#192224 guisp=#192224 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
hi ModeMsg guifg=#F9F9F9 guibg=#192224 guisp=#192224 gui=bold ctermfg=15 ctermbg=235 cterm=bold
hi CursorColumn guifg=NONE guibg=#222E30 guisp=#222E30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Define guifg=#fc5fa3 guibg=NONE guisp=NONE gui=NONE ctermfg=205 ctermbg=NONE cterm=NONE
hi Function guifg=#99e8d6 guibg=NONE guisp=NONE gui=bold ctermfg=116 ctermbg=NONE cterm=bold
hi FoldColumn guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi PreProc guifg=#fc5fa3 guibg=NONE guisp=NONE gui=bold ctermfg=205 ctermbg=NONE cterm=bold
hi Visual guifg=#192224 guibg=#F9F9FF guisp=#F9F9FF gui=NONE ctermfg=235 ctermbg=189 cterm=NONE
hi MoreMsg guifg=#41b645 guibg=NONE guisp=NONE gui=bold ctermfg=71 ctermbg=NONE cterm=bold
hi SpellCap guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi VertSplit guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=235 ctermbg=66 cterm=bold
hi Exception guifg=#fc5fa3 guibg=NONE guisp=NONE gui=NONE ctermfg=205 ctermbg=NONE cterm=NONE
hi Keyword guifg=#fc5fa3 guibg=NONE guisp=NONE gui=bold ctermfg=205 ctermbg=NONE cterm=bold
hi Type guifg=#fc5fa3 guibg=NONE guisp=NONE gui=bold ctermfg=205 ctermbg=NONE cterm=bold
hi DiffChange guifg=NONE guibg=#483635 guisp=#483635 gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
hi Cursor guifg=#192224 guibg=#F9F9F9 guisp=#F9F9F9 gui=NONE ctermfg=235 ctermbg=15 cterm=NONE
hi SpellLocal guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Error guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi PMenu guifg=#ffffff guibg=#302f30 guisp=#302f30 gui=NONE ctermfg=15 ctermbg=236 cterm=NONE
hi SpecialKey guifg=#5E6C70 guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi Constant guifg=#99e8d6 guibg=NONE guisp=NONE gui=NONE ctermfg=116 ctermbg=NONE cterm=NONE
hi Tag guifg=#9686f5 guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi String guifg=#fc6a5d guibg=NONE guisp=NONE gui=NONE ctermfg=203 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=#e2e4e5 guibg=#969696 guisp=#969696 gui=NONE ctermfg=254 ctermbg=246 cterm=NONE
hi MatchParen guifg=#41b645 guibg=NONE guisp=NONE gui=bold ctermfg=71 ctermbg=NONE cterm=bold
hi Repeat guifg=#fc5fa3 guibg=NONE guisp=NONE gui=bold ctermfg=205 ctermbg=NONE cterm=bold
hi SpellBad guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Directory guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Structure guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Macro guifg=#41b645 guibg=NONE guisp=NONE gui=NONE ctermfg=71 ctermbg=NONE cterm=NONE
hi Underlined guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi DiffAdd guifg=#ffffff guibg=#483635 guisp=#483635 gui=NONE ctermfg=15 ctermbg=238 cterm=NONE
hi TabLine guifg=#ffffff guibg=#969696 guisp=#969696 gui=NONE ctermfg=15 ctermbg=246 cterm=NONE
hi cursorim guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
