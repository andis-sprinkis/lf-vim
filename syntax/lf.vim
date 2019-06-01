" lfrc vim syntax

if exists("b:current_syntax")
	finish
endif

let b:current_syntax = "lf"

" Comment Matching
syn match lfComment '#.*$'

" String Matching
syn match lfString "'.*'"
syn match lfString '".*"' contains=lfVar,lfSpecial

" Match lf variables
syn match lfVar '\$f'
syn match lfVar '\$fx'
syn match lfVar '\$fs'
syn match lfVar '\$id'

" Keywords
syn keyword lfKeyword set cmd map push up half-up up half-up page-up down half-down page-down updir open quit top bottom toggle invert unselect copy cut paste clear redraw reload read find find-back find-next find-prev search search-back search-next search-prev mark-save mark-load skipwhite

" Highlighting for different command types
syn match lfShell '\$.*$' contains=lfVar,lfSpecial,lfString
syn match lfShell ':.*$' contains=lfVar,lfSpecial,lfString
syn match lfShell '%.*$' contains=lfVar,lfSpecial,lfString
syn match lfShell '!.*$' contains=lfVar,lfSpecial,lfString
syn match lfShell '&.*$' contains=lfVar,lfSpecial,lfString

" Special matching
syn match lfSpecial '<.*>'
syn match lfSpecial '\\.'

" TODO Replace lfIgnore with sh.vim highlighting
" Ignore command sections
syn region lfIgnore start=".{{" end="}}" fold transparent contains=lfVar,lfSpecial,lfString,lfComment

hi def link lfComment Comment
hi def link lfVar Type
hi def link lfSpecial Special
hi def link lfString String
hi def link lfKeyword Statement
hi def link lfMapping Type
hi def link lfShell PreProc
hi def link lfIgnore Normal
