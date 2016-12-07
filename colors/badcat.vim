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