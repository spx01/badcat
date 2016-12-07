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
call s:HL('MatchParen'   , s:green, 'NONE')
" }}}
" BASE SYNTAX ---------------------------------------------------------------{{{
call s:HL('Normal'  , s:white, s:darkgray)
call s:HL('Comment' , s:lightgray)
" }}}


" SPECIFIC-LANGUAGE SYNTAX
" VANILLA VIM ---------------------------------------------------------------{{{
call s:HL('vimCommentTitle' , s:green)
" }}}

" HTML ----------------------------------------------------------------------{{{
call s:HL('htmlTag', s:white)
call s:HL('htmlEndTag', s:white)
call s:HL('htmlTagName', s:red)
call s:HL('htmlArg', s:green)
call s:HL('htmlTitle', s:white)
call s:HL('htmlLink', s:white)
call s:HL('htmlItalic', s:white, 'NONE')
call s:HL('htmlH1', s:white)
call s:HL('htmlH2', s:white)
call s:HL('htmlH3', s:white)
call s:HL('htmlH4', s:white)
call s:HL('htmlH5', s:white)
call s:HL('htmlH6', s:white)
call s:HL('htmlSpecialTagName', s:red)
call s:HL('htmlSpecialChar', s:white)
call s:HL('htmlString', s:yellow)
" }}}
" CSS -----------------------------------------------------------------------{{{
call s:HL('cssTagName', s:red)
call s:HL('cssDefinition', s:yellow)
call s:HL('cssBraces', s:white)
call s:HL('cssProp', s:orange)
call s:HL('cssColor', s:yellow)
call s:HL('cssUnitDecorators', s:yellow)
call s:HL('cssFunctionName', s:blue)
call s:HL('cssFunctionComma', s:white)
call s:HL('cssValueNumber', s:yellow)
call s:HL('cssValueLength', s:yellow)
call s:HL('cssClassName', s:green)
call s:HL('cssClassNameDot', s:green)
call s:HL('cssIdentifier', s:green)
call s:HL('cssPseudoClass', s:blue)
call s:HL('cssPseudoClassId', s:blue)
call s:HL('cssPseudoClassFn', s:blue)
call s:HL('cssInclude', s:white)
call s:HL('cssIncludeKeyword', s:purple)
call s:HL('cssMediaKeyword', s:purple)
call s:HL('cssMediaType', s:white)
call s:HL('cssVendor', s:lightgray)
call s:HL('cssSelectorOp', s:white)
call s:HL('cssSelectorOp2', s:white)
call s:HL('cssAttributeSelector', s:blue)
call s:HL('cssAttr', s:green)
call s:HL('cssBorderAttr', s:yellow)
call s:HL('cssTableAttr', s:yellow)
call s:HL('cssCommonAttr', s:yellow)
call s:HL('cssFontAttr', s:yellow)
call s:HL('cssPositioningAttr', s:yellow)
call s:HL('cssBoxAttr', s:yellow)
call s:HL('cssTextAttr', s:yellow)
call s:HL('cssBackgroundAttr', s:yellow)
call s:HL('cssUIAttr', s:yellow)
call s:HL('cssKeyFrameSelector', s:purple)
call s:HL('cssGradientAttr', s:purple)
call s:HL('cssValueTime', s:yellow)
call s:HL('cssAnimationAttr', s:yellow)
call s:HL('cssTransitionAttr', s:yellow)
call s:HL('cssValueAngle', s:yellow)
call s:HL('cssStringQ', s:yellow)
call s:HL('cssStringQQ', s:yellow)
" }}}
" JAVASCRIPT ----------------------------------------------------------------{{{
call s:HL('JavaScriptIdentifier', s:red)
call s:HL('JavaScriptFunction', s:blue)
call s:HL('JavaScriptBraces', s:white)
call s:HL('JavaScriptStatement', s:blue)
call s:HL('JavaScriptReserved', s:red)
call s:HL('JavaScriptConditional', s:orange)
call s:HL('JavaScriptRepeat', s:orange)
call s:HL('JavaScriptNumber', s:yellow)
call s:HL('JavaScriptMember', s:blue)

" pangloss/vim-javascript
call s:HL('jsStorageClass', s:red)
call s:HL('jsOperator', s:red)
call s:HL('jsFunction', s:blue)
call s:HL('jsFuncName', s:blue)
call s:HL('jsFuncArgs', s:white)
call s:HL('jsFuncCall', s:purple)
call s:HL('jsReturn', s:pink)
call s:HL('jsUndefined', s:pink)
call s:HL('jsNull', s:pink)
call s:HL('jsGlobalObjects', s:blue)
call s:HL('jsGlobalNodeObjects', s:purple)
call s:HL('jsConditional', s:green)
call s:HL('jsRepeat', s:green)
call s:HL('jsNumber', s:yellow)
call s:HL('jsThis', s:orange)
call s:HL('jsTernaryIfOperator', s:white)
call s:HL('jsObjectKey', s:green)
call s:HL('jsFunctionKey', s:green)
call s:HL('jsTry', s:orange)
call s:HL('jsCatch', s:orange)
call s:HL('jsException', s:orange)
call s:HL('jsAsyncKeyword', s:purple)
call s:HL('jsModuleKeyword', s:blue)
call s:HL('jsModuleOperators', s:purple)
call s:HL('jsModuleDefault', s:red)
call s:HL('jsClassKeyword', s:red)
call s:HL('jsClassDefinition', s:blue)
call s:HL('jsArrowFunction', s:red)
call s:HL('jsObjectFuncName', s:purple)
call s:HL('jsTemplateVar', s:white)
call s:HL('jsSuper', s:purple)
call s:HL('jsNoise', s:red)
call s:HL('jsStatement', s:purple)
call s:HL('jsString', s:yellow)
call s:HL('jsBooleanTrue', s:pink)
call s:HL('jsBooleanFalse', s:pink)
call s:HL('jsImport', s:green)
call s:HL('jsFrom', s:green)
call s:HL('jsExport', s:green)
call s:HL('jsExportDefault', s:purple)
call s:HL('jsExtendsKeyword', s:red)
" }}}

" MARKDOWN ------------------------------------------------------------------{{{
call s:HL('markdownH1'                , s:red)
call s:HL('markdownH2'                , s:red)
call s:HL('markdownH3'                , s:red)
call s:HL('markdownH4'                , s:red)
call s:HL('markdownH5'                , s:red)
call s:HL('markdownH6'                , s:red)
call s:HL('markdownHeadingDelimiter'  , s:red)
call s:HL('markdownLinkText'          , s:green)
call s:HL('markdownLinkTextDelimiter' , s:green)
call s:HL('markdownUrl'               , s:yellow)
call s:HL('markdownCodeBlock'         , s:yellow)
call s:HL('markdownId'         , s:yellow)
call s:HL('markdownIdDeclaration'         , s:green)
call s:HL('markdownCode'         , s:lightgray)
call s:HL('markdownCodeDelimiter'         , s:lightgray)
call s:HL('markdownRule'         , s:lightgray)
" }}}