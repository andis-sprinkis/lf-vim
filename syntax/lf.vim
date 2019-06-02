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
syn match lfVar '\$f\|\$fx\|\$fs\|\$id'

" Keywords
syn keyword lfKeyword set cmd map push up half-up up half-up page-up down half-down page-down updir open quit top bottom toggle invert unselect copy cut paste clear redraw reload read find find-back find-next find-prev search search-back search-next search-prev mark-save mark-load skipwhite

" Highlighting for different command types
syn match lfShell '\$.*$\|:.*$\|%.*$\|!.*$\|&.*$' contains=lfVar,lfSpecial,lfString

" Special matching
syn match lfSpecial '<.*>'
syn match lfSpecial '\\.'

" Shell script matching for cmd
unlet b:current_syntax
syn include @Shell syntax/sh.vim
let b:current_syntax = "lf"
syn region lfIgnore start=".{{" end="}}" contains=lfExternalShell
syn match lfExternalShell "^\s.*$" transparent contains=@Shell

hi def link lfComment Comment
hi def link lfVar Type
hi def link lfSpecial Special
hi def link lfString String
hi def link lfKeyword Statement
hi def link lfShell PreProc
hi def link lfExternalShell Normal
hi def link lfIgnore Normal
