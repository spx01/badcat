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