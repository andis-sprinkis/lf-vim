" Vim syntax file
" Language:  lf config file
" Maintainer: Cameron Wright https://github.com/VebbNix
" Last Change: 23 February 2020

if exists("b:current_syntax")
	finish
endif

let b:current_syntax = "lf"

"{{{ Comment Matching
syn match    lfComment        '#.*$'
"}}}

"{{{ String Matching
syn match    lfString         "'.*'"
syn match    lfString         '".*"' contains=lfVar,lfSpecial
"}}}

"{{{ Match lf Variables
syn match    lfVar            '\$f\|\$fx\|\$fs\|\$id'
"}}}

"{{{ Keywords
syn keyword  lfKeyword        set cmd map cmap skipwhite
"}}}

"{{{ Options Keywords
syn keyword  lfOptions        push up half-up up half-up page-up down half-down page-down updir open quit top bottom toggle invert unselect copy cut paste clear redraw reload read find find-back find-next find-prev search search-back search-next search-prev mark-save mark-load anchorfind color256 dircounts dirfirst drawbox globsearch icons hidden ignorecase ignoredia incsearch preview reverse smartcase smartdia wrapscan wrapscroll number relativenumber findlen period scrolloff tabstop errorfmt filesep ifs previewer promptfmt shell sortby timefmt ratios info shellopts
"}}}

"{{{ Special Matching
syn match    lfSpecial        '<.*>\|\\.'
"}}}

"{{{ Shell Script Matching for cmd
unlet b:current_syntax
syn include  @Shell           syntax/sh.vim
let b:current_syntax = "lf"
syn region   lfIgnore         start=".{{\n" end="^}}" keepend contains=lfExternalShell,lfExternalPatch
syn match    lfShell          '\$[a-zA-Z].*$\|:[a-zA-Z].*$\|%[a-zA-Z].*$\|![a-zA-Z].*$\|&[a-zA-Z].*$' transparent contains=@Shell,lfExternalPatch
syn match    lfExternalShell  "^.*$" transparent contained contains=@Shell
syn match    lfExternalPatch  "^\s*cmd\ .*\ .{{$\|^}}$" contained
"}}}

"{{{ Link Highlighting
hi def link  lfComment        Comment
hi def link  lfVar            Type
hi def link  lfSpecial        Special
hi def link  lfString         String
hi def link  lfKeyword        Statement
hi def link  lfOptions        Constant
hi def link  lfConstant       Constant
hi def link  lfExternalShell  Normal
hi def link  lfExternalPatch  Special
hi def link  lfIgnore         Special
"}}}
