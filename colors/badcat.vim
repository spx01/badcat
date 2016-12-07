" Vim colorscheme file.
"
" File:    badcat.vim
" URL:     https://github.com/idlua/badcat
" Author:  Luan Vicente <hi@idlua.me>


" PREAMBLE
" BASIC SETTINGS-------------------------------------------------------------{{{
if exists('syntax_on')
   syntax reset
endif

highlight clear
set t_Co=256
set background=dark

let g:colors_name = 'badcat'
" }}}
" HIGHLIGHTING FUNCTION ------------------------------------------------------{{{
if has('gui_running')
    let s:hi_args = ['guifg', 'guibg', 'gui', 'guisp']
else
    let s:hi_args = ['ctermfg', 'ctermbg', 'cterm']
endif

function! s:HL(group, ...)
    let command = 'hi ' . a:group

    for i in range(0, len(a:000) - 1)
        let command .= ' ' . s:hi_args[i] . '=' . a:000[i]
    endfor

    execute command
endfunc
" }}}
" COLOR PALETTE ------------------------------------------------------------{{{
if has('gui_running')
  let s:darkgray  = '#121212'
  let s:lightgray = '#6c6c6c'
  let s:gray      = '#262626'
  let s:black     = '#080808'
  let s:white     = '#e4e4e4'
  let s:red       = '#ff5f5f'
  let s:green     = '#afd787'
  let s:purple    = '#875faf'
  let s:yellow    = '#ffffaf'
  let s:blue      = '#5fafd7'
  let s:orange    = '#ffaf5f'
  let s:pink      = '#ff87df'
elseif &t_Co == 256
  let s:darkgray  = '233'
  let s:lightgray = '242'
  let s:gray      = '235'
  let s:white     = '254'
  let s:black     = '232'
  let s:red       = '203'
  let s:green     = '150'
  let s:purple    = '097'
  let s:yellow    = '229'
  let s:blue      = '074'
  let s:orange    = '215'
  let s:pink      = '212'
endif
" }}}


" SETTINGS BASIC COLORS
" GENERAL/UI ----------------------------------------------------------------{{{
call s:HL('LineNr', s:gray)
call s:HL('CursorLineNr', s:lightgray)
call s:HL('NonText', s:gray)                     " '~', '@' and etc
call s:HL('CursorLine', 'NONE', s:black, 'NONE') " CURSROR HIGHLIGHT
call s:HL('ColorColumn', 'NONE', s:gray)         " RULE BAR
call s:HL('VertSplit'    , s:darkgray, s:gray)     " VERTICAL SPLIT DIVISOR
call s:HL('Folded' , s:lightgray, 'NONE')
call s:HL('StatusLine', s:black, s:green)
call s:HL('StatusLineNC', s:darkgray, s:lightgray)
call s:HL('TabLineFill'  , 'NONE', s:black, 'NONE')
call s:HL('TabLineSel'   , s:black, s:green, 'NONE')
call s:HL('TabLine'      , s:white, s:gray, 'NONE')
" }}}
" BASE SYNTAX ---------------------------------------------------------------{{{
call s:HL('Normal'  , s:white, s:darkgray)
call s:HL('Comment' , s:lightgray)
" }}}


" SPECIFIC-LANGUAGE SYNTAX
" VANILLA VIM ---------------------------------------------------------------{{{
call s:HL('vimCommentTitle' , s:green)
" }}}
