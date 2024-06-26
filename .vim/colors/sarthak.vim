" Xcode Dark Theme
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "xcode-dark"

" General
hi Normal       guifg=#ffffff guibg=#212327
hi Cursor       guifg=#212327 guibg=#ffffff
hi CursorLine   guibg=#343333
hi CursorColumn guibg=#343333
hi ColorColumn  guibg=#343333
hi LineNr       guifg=#515b70 guibg=#212327
hi VertSplit    guifg=#121212 guibg=#121212
hi SignColumn   guibg=#212327

" Syntax
hi Comment      guifg=#515b70
hi Constant     guifg=#ff6a6a
hi String       guifg=#9cd156
hi Character    guifg=#9cd156
hi Number       guifg=#ff6a6a
hi Boolean      guifg=#ff6a6a
hi Float        guifg=#ff6a6a
hi Identifier   guifg=#4d85ff
hi Function     guifg=#4d85ff
hi Statement    guifg=#ff6a6a
hi Conditional  guifg=#ff6a6a
hi Repeat       guifg=#ff6a6a
hi Label        guifg=#ff6a6a
hi Operator     guifg=#ff6a6a
hi Keyword      guifg=#ff6a6a
hi Exception    guifg=#ff6a6a
hi PreProc      guifg=#caba2d
hi Include      guifg=#caba2d
hi Define       guifg=#caba2d
hi Macro        guifg=#caba2d
hi PreCondit    guifg=#caba2d
hi Type         guifg=#4d85ff
hi StorageClass guifg=#4d85ff
hi Structure    guifg=#4d85ff
hi Typedef      guifg=#4d85ff
hi Special      guifg=#9cd156
hi SpecialChar  guifg=#9cd156
hi Tag          guifg=#9cd156
hi Delimiter    guifg=#ffffff
hi SpecialComment guifg=#515b70
hi Debug        guifg=#c63a5d

" UI
hi Visual       guibg=#2f55b1
hi VisualNOS    guibg=#2f55b1
hi Search       guibg=#eeed38 guifg=#000000
hi MatchParen   guibg=#2f55b1
hi Pmenu        guibg=#343333 guifg=#ffffff
hi PmenuSel     guibg=#2f55b1 guifg=#ffffff
hi PmenuSbar    guibg=#343333
hi PmenuThumb   guibg=#515b70
hi FoldColumn   guibg=#212327 guifg=#515b70
hi Folded       guibg=#212327 guifg=#515b70
hi Title        guifg=#ffffff
hi ErrorMsg     guibg=#c63a5d guifg=#ffffff
hi WarningMsg   guibg=#caba2d guifg=#000000
hi MoreMsg      guifg=#25ad6b
hi ModeMsg      guifg=#25ad6b
hi Directory    guifg=#4d85ff
hi Question     guifg=#4d85ff
hi StatusLine   guibg=#343333 guifg=#ffffff
hi StatusLineNC guibg=#212327 guifg=#515b70
hi SpecialKey   guifg=#9cd156
hi NonText      guifg=#515b70
hi TabLine      guibg=#343333 guifg=#ffffff
hi TabLineSel   guibg=#2f55b1 guifg=#ffffff
hi TabLineFill  guibg=#343333
