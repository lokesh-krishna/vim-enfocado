" -----------------------------------------------------------------------------
" Name:        Enfocado for Vim
" Author:      Wuelner Martínez <wuelner.martinez@outlook.com>
" URL:         https://github.com/wuelnerdotexe/vim-enfocado
" License:     MIT (C) Wuelner Martínez.
" Description: How themes should be.
" About:       Enfocado is more than a theme, it is a concept of "how themes
"              should be", focusing on what is really important to developers:
"              the code and nothing else.
" -----------------------------------------------------------------------------

" The Enfocado theme is initialized.
let g:colors_name = "enfocado"

" The script ends if the theme is not supported.
if !(has('termguicolors') && &termguicolors)
      \ && !has('gui_running') && &t_Co != 256
  finish
endif

" Vim's dark mode is on.
set background=dark

" All highlights are removed.
if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" The Selenized black color scheme is declared.
let s:bg_0       = [ '#181818', 234 ]
let s:bg_1       = [ '#252525', 235 ]
let s:bg_2       = [ '#3B3B3B', 237 ]
let s:dim_0      = [ '#777777', 243 ]
let s:fg_0       = [ '#B9B9B9', 250 ]
let s:fg_1       = [ '#DEDEDE', 253 ]
let s:red        = [ '#ED4A46', 203 ]
let s:green      = [ '#70B433', 107 ]
let s:yellow     = [ '#DBB32D', 179 ]
let s:blue       = [ '#368AEB', 69  ]
let s:magenta    = [ '#EB6EB7', 205 ]
let s:cyan       = [ '#3FC5B7', 79  ]
let s:orange     = [ '#E67F43', 173 ]
let s:violet     = [ '#A580E2', 140 ]
let s:br_red     = [ '#FF5E56', 203 ]
let s:br_green   = [ '#83C746', 113 ]
let s:br_yellow  = [ '#EFC541', 221 ]
let s:br_blue    = [ '#4F9CFE', 75  ]
let s:br_magenta = [ '#FF81CA', 212 ]
let s:br_cyan    = [ '#56D8C9', 80  ]
let s:br_orange  = [ '#FA9153', 209 ]
let s:br_violet  = [ '#B891F5', 141 ]

" Support colors are declared.
let s:black = [ '#000000', 16  ]

" Attributes are declared.
let s:none        = [ 'NONE'         , 'NONE'          ]
let s:reverse     = [ 'reverse'      , 'reverse'       ]
let s:bold        = [ 'bold'         , 'bold'          ]
let s:bold_italic = [ 'bold,italic'  , 'bold,italic'   ]
let s:italic      = [ 'italic'       , 'italic'        ]
let s:strike      = [ 'strikethrough', 'strikethrough' ]
let s:underline   = [ 'underline'    , 'underline'     ]
let s:undercurl   = [ 'undercurl'    , 'undercurl'     ]

" Configuration variables are initialized.
if !exists('g:enfocado_style')
  let g:enfocado_style = "nature"
endif

" A function is created to highlight the groups.
function! s:Hl(group, txt, bg, fg, sp)
    execute "highlight ".a:group.
          \ " gui=".a:txt[0]."  cterm=".a:txt[0]."  term=".a:txt[0].
          \ " guibg=".a:bg[0]." ctermbg=".a:bg[1].
          \ " guifg=".a:fg[0]." ctermfg=".a:fg[1]." guisp=".a:sp[0]
endfunction
" ------------------------------------------------------------------------------
" SECTION: Highlight groups.
" ------------------------------------------------------------------------------
" Enfocado groups.
call s:Hl("EnfocadoBlacks", s:none, s:black, s:none, s:none)
call s:Hl("EnfocadoComments", s:none, s:none, s:dim_0, s:none)
call s:Hl("EnfocadoConstants", s:none, s:none, s:cyan, s:none)
call s:Hl("EnfocadoCursors", s:none, s:fg_0, s:bg_1, s:none)
call s:Hl("EnfocadoDiffsAdds", s:none, s:none, s:green, s:none)
call s:Hl("EnfocadoDiffsChanges", s:none, s:none, s:yellow, s:none)
call s:Hl("EnfocadoDiffsDeletes", s:none, s:none, s:red, s:none)
call s:Hl("EnfocadoDiffsFgs", s:none, s:none, s:cyan, s:none)
call s:Hl("EnfocadoDimmeds", s:none, s:none, s:bg_2, s:none)
call s:Hl("EnfocadoErrors", s:none, s:none, s:br_red, s:none)
call s:Hl("EnfocadoErrorsFloats", s:none, s:bg_1, s:br_red, s:none)
call s:Hl("EnfocadoErrorsInvs", s:none, s:br_red, s:bg_1, s:none)
call s:Hl("EnfocadoErrorsUnders", s:underline, s:none, s:br_red, s:br_red)
call s:Hl("EnfocadoFgs", s:none, s:none, s:fg_0, s:none)
call s:Hl("EnfocadoFgs1", s:none, s:none, s:fg_1, s:none)
call s:Hl("EnfocadoHints", s:none, s:none, s:br_blue, s:none)
call s:Hl("EnfocadoHintsFloats", s:none, s:bg_1, s:br_blue, s:none)
call s:Hl("EnfocadoHintsInvs", s:none, s:br_blue, s:bg_1, s:none)
call s:Hl("EnfocadoHintsUnders", s:underline, s:none, s:br_blue, s:br_blue)
call s:Hl("EnfocadoHls", s:none, s:br_yellow, s:bg_1, s:none)
call s:Hl("EnfocadoIgnores", s:none, s:none, s:bg_1, s:none)
call s:Hl("EnfocadoFloat", s:none, s:bg_1, s:fg_0, s:none)
call s:Hl("EnfocadoFloatBorder", s:none, s:bg_1, s:bg_2, s:none)
call s:Hl("EnfocadoInfos", s:none, s:none, s:br_yellow, s:none)
call s:Hl("EnfocadoInfosFloats", s:none, s:bg_1, s:br_yellow, s:none)
call s:Hl("EnfocadoInfosInvs", s:none, s:br_yellow, s:bg_1, s:none)
call s:Hl("EnfocadoInfosUnders", s:underline, s:none, s:br_yellow, s:br_yellow)
call s:Hl("EnfocadoNones", s:none, s:none, s:none, s:none)
call s:Hl("EnfocadoNormal", s:none, s:bg_0, s:fg_0, s:none)
call s:Hl("EnfocadoPopups", s:none, s:bg_1, s:fg_1, s:none)
call s:Hl("EnfocadoSearchs", s:none, s:br_cyan, s:bg_1, s:none)
call s:Hl("EnfocadoStatusLines", s:none, s:bg_1, s:dim_0, s:none)
call s:Hl("EnfocadoStatusLinesNC", s:none, s:bg_1, s:bg_2, s:none)
call s:Hl("EnfocadoStrikeds", s:strike, s:none, s:bg_2, s:none)
call s:Hl("EnfocadoSuccess", s:none, s:none, s:br_green, s:none)
call s:Hl("EnfocadoSuccessFloats", s:none, s:bg_1, s:br_green, s:none)
call s:Hl("EnfocadoSuccessInvs", s:none, s:br_green, s:bg_1, s:none)
call s:Hl("EnfocadoSuccessUnders", s:underline, s:none, s:br_green, s:br_green)
call s:Hl("EnfocadoUnderlineds", s:underline, s:none, s:br_cyan, s:cyan)
call s:Hl("EnfocadoVisuals", s:none, s:bg_2, s:none, s:none)
call s:Hl("EnfocadoWarns", s:none, s:none, s:br_orange, s:none)
call s:Hl("EnfocadoWarnsFloats", s:none, s:bg_1, s:br_orange, s:none)
call s:Hl("EnfocadoWarnsInvs", s:none, s:br_orange, s:bg_1, s:none)
call s:Hl("EnfocadoWarnsUnders", s:underline, s:none, s:br_orange, s:br_orange)
if g:enfocado_style == "neon"
  " Enfocado neon...
  call s:Hl("EnfocadoAccents", s:none, s:none, s:magenta, s:none)
  call s:Hl("EnfocadoAccentsFloats", s:none, s:bg_1, s:magenta, s:none)
  call s:Hl("EnfocadoFunctions", s:none, s:none, s:br_magenta, s:none)
  call s:Hl("EnfocadoFunctionsBuiltins", s:none, s:none, s:br_green, s:none)
  call s:Hl("EnfocadoKeywords", s:none, s:none, s:br_violet, s:none)
  call s:Hl("EnfocadoKeywordsBuiltins", s:none, s:none, s:br_blue, s:none)
  call s:Hl("EnfocadoTitles", s:bold, s:none, s:br_magenta, s:none)
  call s:Hl("EnfocadoTypes", s:none, s:none, s:violet, s:none)
  call s:Hl("EnfocadoTypesBuiltins", s:none, s:none, s:blue, s:none)
  call s:Hl("EnfocadoVariables", s:none, s:none, s:magenta, s:none)
  call s:Hl("EnfocadoVariablesBuiltins", s:none, s:none, s:green, s:none)
else
  " Enfocado nature...
  call s:Hl("EnfocadoAccents", s:none, s:none, s:green, s:none)
  call s:Hl("EnfocadoAccentsFloats", s:none, s:bg_1, s:green, s:none)
  call s:Hl("EnfocadoFunctions", s:none, s:none, s:br_green, s:none)
  call s:Hl("EnfocadoFunctionsBuiltins", s:none, s:none, s:br_magenta, s:none)
  call s:Hl("EnfocadoKeywords", s:none, s:none, s:br_blue, s:none)
  call s:Hl("EnfocadoKeywordsBuiltins", s:none, s:none, s:br_violet, s:none)
  call s:Hl("EnfocadoTitles", s:bold, s:none, s:br_green, s:none)
  call s:Hl("EnfocadoTypes", s:none, s:none, s:blue, s:none)
  call s:Hl("EnfocadoTypesBuiltins", s:none, s:none, s:violet, s:none)
  call s:Hl("EnfocadoVariables", s:none, s:none, s:green, s:none)
  call s:Hl("EnfocadoVariablesBuiltins", s:none, s:none, s:magenta, s:none)
endif

" General vim groups.
highlight! link DiffAdd EnfocadoDiffsAdds
highlight! link DiffChange EnfocadoDiffsChanges
highlight! link DiffDelete EnfocadoDiffsDeletes
highlight! link DiffText EnfocadoHls
highlight! link Directory EnfocadoFgs
highlight! link ErrorMsg EnfocadoErrors
highlight! link FoldColumn EnfocadoNones
highlight! link IncSearch EnfocadoSearchs
highlight! link LineNr EnfocadoDimmeds
highlight! link ModeMsg EnfocadoAccents
highlight! link MoreMsg EnfocadoAccents
highlight! link NonText EnfocadoDimmeds
highlight! link Question EnfocadoInfos
highlight! link Search EnfocadoSearchs
highlight! link SignColumn EnfocadoNones
highlight! link SpecialKey EnfocadoDimmeds
highlight! link Statusline EnfocadoStatuslines
highlight! link StatuslineNC EnfocadoStatuslinesNC
highlight! link StatuslineTerm EnfocadoStatuslines
highlight! link StatuslineTermNC EnfocadoStatuslinesNC
highlight! link WarningMsg EnfocadoWarns
highlight! link Visual EnfocadoVisuals

call s:Hl("Folded", s:none, s:bg_1, s:dim_0, s:none)
call s:Hl("Normal", s:none, s:bg_0, s:fg_1, s:none)
call s:Hl("QuickFixLine", s:none, s:bg_2, s:none, s:none)
call s:Hl("ToolbarButton", s:none, s:bg_1, s:dim_0, s:none)
call s:Hl("ToolbarLine", s:none, s:bg_2, s:bg_2, s:none)
call s:Hl("VertSplit", s:none, s:none, s:black, s:none)
call s:Hl("WildMenu", s:none, s:bg_1, s:fg_1, s:none)
if has('spell')
  call s:Hl("SpellBad", s:undercurl, s:none, s:br_red, s:br_red)
  call s:Hl("SpellCap", s:undercurl, s:none, s:br_orange, s:br_orange)
  call s:Hl("SpellLocal", s:undercurl, s:none, s:br_yellow, s:br_yellow)
  call s:Hl("SpellRare", s:undercurl, s:none, s:br_magenta, s:br_magenta)
endif
if version >= 700
  call s:Hl("CursorColumn", s:none, s:bg_1, s:none, s:none)
  call s:Hl("CursorLine", s:none, s:bg_1, s:none, s:none)
  call s:Hl("MatchParen", s:none, s:bg_2, s:none, s:none)
  call s:Hl("Pmenu", s:none, s:bg_1, s:dim_0, s:none)
  call s:Hl("PmenuSbar", s:none, s:bg_2, s:bg_2, s:none)
  call s:Hl("PmenuSel", s:none, s:bg_2, s:fg_1, s:none)
  call s:Hl("PmenuThumb", s:none, s:dim_0, s:dim_0, s:none)
  call s:Hl("TabLine", s:none, s:bg_1, s:bg_2, s:none)
  call s:Hl("TabLineFill", s:none, s:bg_1, s:bg_2, s:none)
  call s:Hl("TabLineSel", s:none, s:bg_0, s:dim_0, s:none)
endif
if version >= 703
  call s:Hl("ColorColumn", s:none, s:bg_1, s:none, s:none)
  call s:Hl("Conceal", s:none, s:none, s:dim_0, s:none)
  call s:Hl("CursorLineNr", s:none, s:bg_1, s:dim_0, s:none)
endif

" Terminal vim groups.
if has('*term_setansicolors')
  let g:terminal_ansi_colors = [
        \ s:bg_1[0],
        \ s:red[0],
        \ s:green[0],
        \ s:yellow[0],
        \ s:blue[0],
        \ s:magenta[0],
        \ s:cyan[0],
        \ s:dim_0[0],
        \ s:bg_2[0],
        \ s:br_red[0],
        \ s:br_green[0],
        \ s:br_yellow[0],
        \ s:br_blue[0],
        \ s:br_magenta[0],
        \ s:br_cyan[0],
        \ s:fg_1[0]
      \ ]
endif

" Syntax general vim groups.
highlight! link Boolean EnfocadoTypesBuiltins
highlight! link Character EnfocadoConstants
highlight! link Comment EnfocadoComments
highlight! link Conditional EnfocadoKeywords
highlight! link Constant EnfocadoConstants
highlight! link Debug EnfocadoConstants
highlight! link Define EnfocadoTypes
highlight! link Delimiter EnfocadoFgs1
highlight! link Error EnfocadoErrors
highlight! link Exception EnfocadoKeywords
highlight! link Float EnfocadoConstants
highlight! link Function EnfocadoFunctions
highlight! link Identifier EnfocadoVariables
highlight! link Ignore EnfocadoIgnores
highlight! link Include EnfocadoTypes
highlight! link Keyword EnfocadoKeywords
highlight! link Label EnfocadoTypes
highlight! link Macro EnfocadoTypes
highlight! link Method EnfocadoFunctions
highlight! link Number EnfocadoConstants
highlight! link Operator EnfocadoKeywords
highlight! link PreCondit EnfocadoKeywords
highlight! link PreProc EnfocadoKeywords
highlight! link Repeat EnfocadoKeywords
highlight! link Special EnfocadoKeywordsBuiltins
highlight! link SpecialChar EnfocadoKeywordsBuiltins
highlight! link SpecialComment EnfocadoKeywordsBuiltins
highlight! link Statement EnfocadoKeywords
highlight! link StorageClass EnfocadoTypes
highlight! link String EnfocadoConstants
highlight! link Struct EnfocadoFunctions
highlight! link Structure EnfocadoKeywords
highlight! link Tag EnfocadoKeywords
highlight! link Title EnfocadoTitles
highlight! link Type EnfocadoTypes
highlight! link Typedef EnfocadoTypes
highlight! link Underlined EnfocadoUnderlineds
highlight! link Delimiter EnfocadoFg2
highlight! link Todo EnfocadoHl
highlight! link NormalFloat EnfocadoFloat
highlight! link FloatBorder EnfocadoFloatBorder

" ------------------------------------------------------------------------------
" SECTION: Syntax language highlight groups.
" ------------------------------------------------------------------------------
" Diff: {{{
  highlight! link diffAdded EnfocadoDiffAdd
  highlight! link diffChanged EnfocadoDiffChange
  highlight! link diffFile EnfocadoConstants
  highlight! link diffLine EnfocadoDiffLine
  highlight! link diffNewFile EnfocadoDiffAdd
  highlight! link diffRemoved EnfocadoDiffDelete
" }}}
" HTML: {{{
  highlight! link htmlPreAttr EnfocadoKeywords
  highlight! link htmlArg EnfocadoIdentifiers
  highlight! link htmlEndTag EnfocadoKeywords
  highlight! link htmlTag EnfocadoKeywords
  highlight! link htmlTagN EnfocadoKeywords
  highlight! link htmlTagName EnfocadoKeywords
  highlight! link htmlSpecialTagName EnfocadoBuiltin
" }}}
" XML: {{{
  highlight! link xmlAttrib EnfocadoIdentifiers
  highlight! link xmlEndTag EnfocadoKeywords
  highlight! link xmlEqual EnfocadoKeywords
  highlight! link xmlTag EnfocadoKeywords
  highlight! link xmlTagName EnfocadoKeywords
" }}}
" JSX: {{{
  highlight! link jsxAttrib EnfocadoIdentifiers
  highlight! link jsxCloseString EnfocadoKeywords
  highlight! link jsxCloseTag EnfocadoKeywords
  highlight! link jsxEqual EnfocadoKeywords
  highlight! link jsxTag EnfocadoKeywords
  highlight! link jsxTagName EnfocadoKeywords
" }}}
" TSX: {{{
  highlight! link tsxAttrib EnfocadoIdentifiers
  highlight! link tsxCloseString EnfocadoKeywords
  highlight! link tsxCloseTag EnfocadoKeywords
  highlight! link tsxEqual EnfocadoKeywords
  highlight! link tsxTag EnfocadoKeywords
  highlight! link tsxTagName EnfocadoKeywords
" }}}
highlight! link Todo EnfocadoHls

" Syntax filetype diff groups.
highlight! link diffAdded EnfocadoDiffsAdds
highlight! link diffBDiffer EnfocadoFgs
highlight! link diffChanged EnfocadoDiffsChanges
highlight! link diffComment	EnfocadoComments
highlight! link diffCommon EnfocadoFgs
highlight! link diffDiffer EnfocadoFgs
highlight! link diffFile EnfocadoFgs1
highlight! link diffIdentical EnfocadoFgs
highlight! link diffIndexLine EnfocadoFgs1
highlight! link diffIsA EnfocadoFgs
highlight! link diffLine EnfocadoDiffsFgs
highlight! link diffNewFile EnfocadoFgs1
highlight! link diffNoEOL EnfocadoFgs
highlight! link diffOldFile EnfocadoFgs1
highlight! link diffOnly EnfocadoFgs
highlight! link diffRemoved EnfocadoDiffsDeletes
highlight! link diffSubname	EnfocadoDiffsFgs
" ------------------------------------------------------------------------------
" SECTION: Neovim highlight groups.
" ------------------------------------------------------------------------------
if has('nvim')
  " Cursors neovim groups.
  highlight! link Cursor EnfocadoCursors
  highlight! link lCursor EnfocadoCursors
  highlight! link TermCursor EnfocadoCursors
  highlight! link TermCursorNC EnfocadoNones

  " Other neovim groups.
  highlight! link FloatBorder EnfocadoAccents
  highlight! link FloatShadow EnfocadoBlacks
  highlight! link FloatShadowThrough EnfocadoBlacks
  highlight! link LineNrAbove EnfocadoDimmeds
  highlight! link LineNrBelow EnfocadoDimmeds
  highlight! link MsgArea EnfocadoComments
  highlight! link MsgSeparator EnfocadoStatusLines
  highlight! link NvimInternalError EnfocadoErrors
  highlight! link RedrawDebugClear EnfocadoWarns
  highlight! link RedrawDebugComposed EnfocadoSuccess
  highlight! link RedrawDebugRecompose EnfocadoErrors
  highlight! link Substitute EnfocadoSearchs
  highlight! link Whitespace EnfocadoDimmeds

  call s:Hl("NormalFloat", s:none, s:bg_1, s:fg_1, s:none)
  call s:Hl("NormalNC", s:none, s:bg_0, s:fg_1, s:none)
  call s:Hl("RedrawDebugNormal", s:reverse, s:none, s:none, s:none)

  " Terminal neovim groups.
  let g:terminal_color_0  = s:bg_1[0]
  let g:terminal_color_1  = s:red[0]
  let g:terminal_color_2  = s:green[0]
  let g:terminal_color_3  = s:yellow[0]
  let g:terminal_color_4  = s:blue[0]
  let g:terminal_color_5  = s:magenta[0]
  let g:terminal_color_6  = s:cyan[0]
  let g:terminal_color_7  = s:dim_0[0]
  let g:terminal_color_8  = s:bg_2[0]
  let g:terminal_color_9  = s:br_red[0]
  let g:terminal_color_10 = s:br_green[0]
  let g:terminal_color_11 = s:br_yellow[0]
  let g:terminal_color_12 = s:br_blue[0]
  let g:terminal_color_13 = s:br_magenta[0]
  let g:terminal_color_14 = s:br_cyan[0]
  let g:terminal_color_15 = s:fg_1[0]
  " nvim-lspconfig: {{{
    highlight! link DiagnosticError EnfocadoErrors
    highlight! link DiagnosticErrorInv EnfocadoErrorsInvs
    highlight! link DiagnosticFloatingError EnfocadoErrorsFloats
    highlight! link DiagnosticFloatingHint EnfocadoHintsFloats
    highlight! link DiagnosticFloatingInfo EnfocadoInfosFloats
    highlight! link DiagnosticFloatingWarn EnfocadoWarnsFloats
    highlight! link DiagnosticHint EnfocadoHints
    highlight! link DiagnosticHintInv EnfocadoHintsInvs
    highlight! link DiagnosticInfo EnfocadoInfosInvs
    highlight! link DiagnosticInfoInv EnfocadoInfosInvs
    highlight! link DiagnosticWarn EnfocadoWarns
    highlight! link DiagnosticWarnInv EnfocadoWarnsInvss
    highlight! link DiagnosticSignError EnfocadoErrors
    highlight! link DiagnosticSignHint EnfocadoHints
    highlight! link DiagnosticSignInfo EnfocadoInfos
    highlight! link DiagnosticSignWarn EnfocadoWarns
    highlight! link DiagnosticUnderlineError EnfocadoErrorsUnders
    highlight! link DiagnosticUnderlineHint EnfocadoHintsUnders
    highlight! link DiagnosticUnderlineInfo EnfocadoInfosUnders
    highlight! link DiagnosticUnderlineWarn EnfocadoWarnsUnders
    highlight! link DiagnosticVirtualTextError EnfocadoErrors
    highlight! link DiagnosticVirtualTextHint EnfocadoHints
    highlight! link DiagnosticVirtualTextInfo EnfocadoInfos
    highlight! link DiagnosticVirtualTextWarn EnfocadoWarns
    highlight! link LspCodeLens EnfocadoComments
    highlight! link LspDiagnosticDefaultError EnfocadoErrors
    highlight! link LspDiagnosticDefaultHint EnfocadoHints
    highlight! link LspDiagnosticDefaultInfo EnfocadoInfos
    highlight! link LspDiagnosticDefaultWarn EnfocadoWarns
    highlight! link LspDiagnosticSignError EnfocadoErrors
    highlight! link LspDiagnosticSignHint EnfocadoHints
    highlight! link LspDiagnosticSignInfo EnfocadoInfos
    highlight! link LspDiagnosticSignWarn EnfocadoWarns
    highlight! link LspDiagnosticsSignError EnfocadoErrors
    highlight! link LspDiagnosticsSignHint EnfocadoHints
    highlight! link LspDiagnosticsSignInformation EnfocadoInfos
    highlight! link LspDiagnosticsSignWarning EnfocadoWarns
    highlight! link LspDiagnosticUnderlineError EnfocadoErrorsUnders
    highlight! link LspDiagnosticUnderlineHint EnfocadoHintsUnders
    highlight! link LspDiagnosticUnderlineInfo EnfocadoInfosUnders
    highlight! link LspDiagnosticUnderlineWarn EnfocadoWarnsUnders
  " }}}
  " nvim-treesitter: {{{
    if g:enfocado_style == "neon"
      " Enfocado neon...
      call s:Hl("TSConstructor", s:bold, s:none, s:br_magenta, s:none)
      call s:Hl("TSMethod", s:italic, s:none, s:br_magenta, s:none)
      call s:Hl("TSNamespace", s:bold, s:none, s:br_magenta, s:none)
      call s:Hl("TSTitle", s:bold_italic, s:none, s:br_magenta, s:none)
    else
      " Enfocado nature...
      call s:Hl("TSConstructor", s:bold, s:none, s:br_green, s:none)
      call s:Hl("TSMethod", s:italic, s:none, s:br_green, s:none)
      call s:Hl("TSNamespace", s:bold, s:none, s:br_green, s:none)
      call s:Hl("TSTitle", s:bold_italic, s:none, s:br_green, s:none)
    endif
    call s:Hl("TSComment", s:italic, s:none, s:dim_0, s:none)
    call s:Hl("TSLiteral", s:italic, s:none, s:fg_1, s:none)
    call s:Hl("TSText", s:italic, s:none, s:fg_1, s:none)
    call s:Hl("TSTextReference", s:italic, s:none, s:fg_1, s:none)
    call s:Hl("TSNone", s:italic, s:none, s:fg_1, s:none)

    highlight! link TSAnnotation EnfocadoComments
    highlight! link TSAttribute EnfocadoVariables
    highlight! link TSBoolean EnfocadoTypesBuiltins
    highlight! link TSCharacter EnfocadoConstants
    highlight! link TSConditional EnfocadoKeywords
    highlight! link TSConstant EnfocadoConstants
    highlight! link TSConstBuiltin EnfocadoTypesBuiltins
    highlight! link TSConstMacro EnfocadoTypes
    highlight! link TSCurrentScope EnfocadoVisuals
    highlight! link TSDanger EnfocadoErrors
    highlight! link TSDefinition EnfocadoVisuals
    highlight! link TSDefinitionUsage EnfocadoVisuals
    highlight! link TSEnvironment EnfocadoTypes
    highlight! link TSEnvironmentName EnfocadoVariables
    highlight! link TSException EnfocadoKeywords
    highlight! link TSField EnfocadoVariables
    highlight! link TSFloat EnfocadoConstants
    highlight! link TSFunction EnfocadoFunctions
    highlight! link TSFuncBuiltin EnfocadoFunctionsBuiltins
    highlight! link TSFuncMacro EnfocadoFunctions
    highlight! link TSInclude EnfocadoTypes
    highlight! link TSKeyword EnfocadoKeywords
    highlight! link TSKeywordFunction EnfocadoTypes
    highlight! link TSKeywordOperator EnfocadoKeywords
    highlight! link TSKeywordReturn EnfocadoKeywords
    highlight! link TSLabel EnfocadoTypes
    highlight! link TSMath EnfocadoFunctionsBuiltins
    highlight! link TSNote EnfocadoInfos
    highlight! link TSNumber EnfocadoConstants
    highlight! link TSOperator EnfocadoKeywords
    highlight! link TSParameter EnfocadoVariables
    highlight! link TSParameterReference EnfocadoVariables
    highlight! link TSProperty EnfocadoVariables
    highlight! link TSPunctDelimiter EnfocadoFgs1
    highlight! link TSPunctBracket EnfocadoTypes
    highlight! link TSPunctSpecial EnfocadoTypesBuiltins
    highlight! link TSRepeat EnfocadoKeywords
    highlight! link TSStrike EnfocadoStrikeds
    highlight! link TSString EnfocadoConstants
    highlight! link TSStringRegex EnfocadoTypesBuiltins
    highlight! link TSStringEscape EnfocadoTypesBuiltins
    highlight! link TSStringSpecial EnfocadoTypesBuiltins
    highlight! link TSSymbol EnfocadoTypes
    highlight! link TSTag EnfocadoKeywords
    highlight! link TSTagAttribute EnfocadoVariables
    highlight! link TSTagDelimiter EnfocadoTypes
    highlight! link TSType EnfocadoTypes
    highlight! link TSTypeBuiltin EnfocadoTypes
    highlight! link TSUnderline EnfocadoUnderlineds
    highlight! link TSURI EnfocadoUnderlineds
    highlight! link TSVariable EnfocadoVariables
    highlight! link TSVariableBuiltin EnfocadoVariablesBuiltins
    highlight! link TSWarning EnfocadoWarns

    highlight! TSEmphasis term=italic cterm=italic gui=italic
    highlight! TSStrong term=bold cterm=bold gui=bold
  " }}}
  " ------------------------------------------------------------------------------
  " SECTION: Neovim plugins highlight groups.
  " ------------------------------------------------------------------------------
  " nvim-cmp: {{{
    highlight! link CmpItemAbbrDefault EnfocadoFgs
    highlight! link CmpItemAbbrDeprecatedDefault EnfocadoErrors
    highlight! link CmpItemAbbrMatchDefault EnfocadoAccents
    highlight! link CmpItemAbbrMatchFuzzyDefault EnfocadoAccents
    highlight! link CmpItemKindDefault EnfocadoFgs
    highlight! link CmpItemKindTextDefault EnfocadoFgs1
    highlight! link CmpItemKindMethodDefault EnfocadoFunctions
    highlight! link CmpItemKindFunctionDefault EnfocadoFunctions
    highlight! link CmpItemKindConstructorDefault EnfocadoTitles
    highlight! link CmpItemKindFieldDefault EnfocadoVariables
    highlight! link CmpItemKindVariableDefault EnfocadoVariables
    highlight! link CmpItemKindClassDefault EnfocadoTitles
    highlight! link CmpItemKindInterfaceDefault EnfocadoTitles
    highlight! link CmpItemKindModuleDefault EnfocadoVariables
    highlight! link CmpItemKindPropertyDefault EnfocadoVariables
    highlight! link CmpItemKindUnitDefault EnfocadoConstants
    highlight! link CmpItemKindValueDefault EnfocadoConstants
    highlight! link CmpItemKindEnumDefault EnfocadoTitles
    highlight! link CmpItemKindKeywordDefault EnfocadoKeywords
    highlight! link CmpItemKindSnippetDefault EnfocadoComments
    highlight! link CmpItemKindColorDefault EnfocadoConstants
    highlight! link CmpItemKindFileDefault EnfocadoFgs
    highlight! link CmpItemKindReferenceDefault EnfocadoFgs1
    highlight! link CmpItemKindFolderDefault EnfocadoFgs
    highlight! link CmpItemKindEnumMemberDefault EnfocadoVariables
    highlight! link CmpItemKindConstantDefault EnfocadoConstants
    highlight! link CmpItemKindStructDefault EnfocadoTitles
    highlight! link CmpItemKindEventDefault EnfocadoFunctions
    highlight! link CmpItemKindOperatorDefault EnfocadoKeywords
    highlight! link CmpItemKindTypeParameterDefault EnfocadoTypes
    highlight! link CmpItemMenuDefault EnfocadoPopups
  " }}}
  " copilot.vim: {{{
    if exists('g:loaded_nvim_treesitter')
      call s:Hl("CopilotSuggestion", s:italic, s:bg_0, s:dim_0, s:none)
    else
      call s:Hl("CopilotSuggestion", s:none, s:bg_0, s:dim_0, s:none)
    endif
  " }}}
  " gitsigns.nvim: {{{
    highlight! link GitSignsAdd EnfocadoDiffsAdds
    highlight! link GitSignsChange EnfocadoDiffsChanges
    highlight! link GitSignsDelete EnfocadoDiffsDeletes
  " }}}
  " nvim-tree.lua: {{{
    highlight! link NvimTreeCursorColumn CursorColumn
    highlight! link NvimTreeCursorLine CursorLine
    highlight! link NvimTreeEmptyFolderName EnfocadoFgs
    highlight! link NvimTreeEndOfBuffer EndOfBuffer
    highlight! link NvimTreeExecFile EnfocadoFgs
    highlight! link NvimTreeFileDeleted EnfocadoDiffsDeletes
    highlight! link NvimTreeFileDirty EnfocadoDiffsDeletes
    highlight! link NvimTreeFileMerge EnfocadoDiffsChanges
    highlight! link NvimTreeFileNew EnfocadoDiffsAdds
    highlight! link NvimTreeFileRenamed EnfocadoDiffsAdds
    highlight! link NvimTreeFileStaged EnfocadoDiffsChanges
    highlight! link NvimTreeFolderIcon EnfocadoFgs
    highlight! link NvimTreeFolderName EnfocadoFgs
    highlight! link NvimTreeGitDeleted EnfocadoDiffsDeletes
    highlight! link NvimTreeGitDirty EnfocadoDiffsDeletes
    highlight! link NvimTreeGitIgnored EnfocadoComments
    highlight! link NvimTreeGitMerge EnfocadoDiffsChanges
    highlight! link NvimTreeGitNew EnfocadoDiffsAdds
    highlight! link NvimTreeGitRenamed EnfocadoDiffsAdds
    highlight! link NvimTreeGitStaged EnfocadoDiffsChanges
    highlight! link NvimTreeImageFile EnfocadoFgs
    highlight! link NvimTreeIndentMarker EnfocadoDimmeds
    highlight! link NvimTreeLspDiagnosticsError EnfocadoErrors
    highlight! link NvimTreeLspDiagnosticsHint EnfocadoHints
    highlight! link NvimTreeLspDiagnosticsInformation EnfocadoInfos
    highlight! link NvimTreeLspDiagnosticsWarning EnfocadoWarns
    highlight! link NvimTreeNormal EnfocadoNormal
    highlight! link NvimTreeNormalNC EnfocadoNormal
    highlight! link NvimTreeOpenedFile EnfocadoFgs
    highlight! link NvimTreeOpenedFolderName EnfocadoFgs
    highlight! link NvimTreePopup EnfocadoPopups
    highlight! link NvimTreeRootFolder EnfocadoComments
    highlight! link NvimTreeSignColumn SignColumn
    highlight! link NvimTreeSpecialFile EnfocadoFgs
    highlight! link NvimTreeStatusLine StatusLine
    highlight! link NvimTreeStatusLineNC StatusLineNC
    highlight! link NvimTreeSymlink EnfocadoFgs
    highlight! link NvimTreeVertSplit VertSplit
    highlight! link NvimTreeWindowPicker EnfocadoAccentsFloats
  " }}}
  " nvim-notify: {{{
    highlight! link NotifyERRORBorder EnfocadoErrors
    highlight! link NotifyWARNBorder EnfocadoWarns
    highlight! link NotifyINFOBorder EnfocadoInfos
    highlight! link NotifyDEBUGBorder EnfocadoComments
    highlight! link NotifyTRACEBorder EnfocadoWarns
    highlight! link NotifyERRORIcon EnfocadoErrors
    highlight! link NotifyWARNIcon EnfocadoWarns
    highlight! link NotifyINFOIcon EnfocadoInfos
    highlight! link NotifyDEBUGIcon EnfocadoComments
    highlight! link NotifyTRACEIcon EnfocadoWarns
    highlight! link NotifyERRORTitle EnfocadoErrors
    highlight! link NotifyWARNTitle EnfocadoWarns
    highlight! link NotifyINFOTitle EnfocadoInfos
    highlight! link NotifyDEBUGTitle EnfocadoComments
    highlight! link NotifyTRACETitle EnfocadoWarns
    highlight! link NotifyERRORBody EnfocadoFgs1
    highlight! link NotifyWARNBody EnfocadoFgs1
    highlight! link NotifyINFOBody EnfocadoFgs1
    highlight! link NotifyDEBUGBody EnfocadoFgs1
    highlight! link NotifyTRACEBody EnfocadoFgs1
    highlight! link NotifyLogTime EnfocadoConstants
    highlight! link NotifyLogTitle EnfocadoTitles
  " }}}
  " telescope.nvim: {{{
    call s:Hl("TelescopePreviewDate", s:none, s:none, s:blue, s:none)
    call s:Hl("TelescopePreviewDirectory", s:bold, s:none, s:br_blue, s:none)
    call s:Hl("TelescopePreviewExecute", s:none, s:none, s:green, s:none)
    call s:Hl("TelescopePreviewLink", s:none, s:none, s:magenta, s:none)
    call s:Hl("TelescopePreviewRead", s:bold, s:none, s:yellow, s:none)
    call s:Hl("TelescopePreviewSize", s:bold, s:none, s:green, s:none)
    call s:Hl("TelescopePreviewUser", s:bold, s:none, s:br_yellow, s:none)
    call s:Hl("TelescopePreviewWrite", s:bold, s:none, s:red, s:none)
    call s:Hl("TelescopeResultsNormal", s:none, s:bg_0, s:dim_0, s:none)

    highlight! link TelescopeBorder EnfocadoAccents
    highlight! link TelescopeMatching EnfocadoAccents
    highlight! link TelescopeMultiSelection EnfocadoVisuals
    highlight! link TelescopeNormal EnfocadoNormal
    highlight! link TelescopePreviewBorder EnfocadoAccents
    highlight! link TelescopePreviewMatch EnfocadoSearchs
    highlight! link TelescopePreviewMessage EnfocadoInfos
    highlight! link TelescopePreviewMessageFillchar EnfocadoInfos
    highlight! link TelescopePreviewNormal EnfocadoNormal
    highlight! link TelescopePreviewTitle EnfocadoTitles
    highlight! link TelescopePromptBorder EnfocadoAccents
    highlight! link TelescopePromptCounter EnfocadoInfos
    highlight! link TelescopePromptNormal EnfocadoNormal
    highlight! link TelescopePromptPrefix EnfocadoFgs1
    highlight! link TelescopePromptTitle EnfocadoTitles
    highlight! link TelescopeResultsBorder EnfocadoAccents
    highlight! link TelescopeResultsDiffAdd EnfocadoDiffsAdds
    highlight! link TelescopeResultsDiffChange EnfocadoDiffsChanges
    highlight! link TelescopeResultsDiffDelete EnfocadoDiffsDeletes
    highlight! link TelescopeResultsDiffUntracked EnfocadoComments
    highlight! link TelescopeResultsClass EnfocadoTitles
    highlight! link TelescopeResultsComment EnfocadoComments
    highlight! link TelescopeResultsConstant EnfocadoConstants
    highlight! link TelescopeResultsField EnfocadoVariables
    highlight! link TelescopeResultsFunction EnfocadoFunctions
    highlight! link TelescopeResultsIdentifier EnfocadoVariables
    highlight! link TelescopeResultsLineNr EnfocadoDimmeds
    highlight! link TelescopeResultsMethod EnfocadoFunctions
    highlight! link TelescopeResultsNumber EnfocadoConstants
    highlight! link TelescopeResultsOperator EnfocadoKeywords
    highlight! link TelescopeResultsSpecialComment EnfocadoKeywordsBuiltins
    highlight! link TelescopeResultsStruct EnfocadoTitles
    highlight! link TelescopeResultsTitle EnfocadoTitles
    highlight! link TelescopeResultsVariable EnfocadoVariables
    highlight! link TelescopeSelection EnfocadoPopups
    highlight! link TelescopeSelectionCaret EnfocadoPopups
    highlight! link TelescopeTitle EnfocadoTitles
  " }}}
  " todo-comments.nvim: {{{
    call s:Hl("TodoBgNOTE", s:bold, s:br_blue, s:bg_1, s:none)
    call s:Hl("TodoFgNOTE", s:none, s:none, s:br_blue, s:none)
    call s:Hl("TodoSignNOTE", s:none, s:none, s:br_blue, s:none)
    call s:Hl("TodoBgPERF", s:bold, s:br_magenta, s:bg_1, s:none)
    call s:Hl("TodoFgPERF", s:none, s:none, s:br_magenta, s:none)
    call s:Hl("TodoSignPERF", s:none, s:none, s:br_magenta, s:none)
    call s:Hl("TodoBgHACK", s:bold, s:br_orange, s:bg_1, s:none)
    call s:Hl("TodoFgHACK", s:none, s:none, s:br_orange, s:none)
    call s:Hl("TodoSignHACK", s:none, s:none, s:br_orange, s:none)
    call s:Hl("TodoBgTODO", s:bold, s:br_yellow, s:bg_1, s:none)
    call s:Hl("TodoFgTODO", s:none, s:none, s:br_yellow, s:none)
    call s:Hl("TodoSignTODO", s:none, s:none, s:br_yellow, s:none)
    call s:Hl("TodoBgFIX", s:bold, s:br_red, s:bg_1, s:none)
    call s:Hl("TodoFgFIX", s:none, s:none, s:br_red, s:none)
    call s:Hl("TodoSignFIX", s:none, s:none, s:br_red, s:none)
    call s:Hl("TodoBgWARN", s:bold, s:br_orange, s:bg_1, s:none)
    call s:Hl("TodoFgWARN", s:none, s:none, s:br_orange, s:none)
    call s:Hl("TodoSignWARN", s:none, s:none, s:br_orange, s:none)
  " }}}
endif
" ------------------------------------------------------------------------------
" SECTION: Vim plugins highlight groups.
" ------------------------------------------------------------------------------
" coc.nvim: {{{
  highlight! link CocCodeLens EnfocadoComments
  highlight! link CocDiagnosticsError EnfocadoErrors
  highlight! link CocDiagnosticsHint EnfocadoHints
  highlight! link CocDiagnosticsInfo EnfocadoInfos
  highlight! link CocDiagnosticsWarning EnfocadoWarns
  highlight! link CocErrorFloat EnfocadoErrorsFloats
  highlight! link CocErrorHighlight EnfocadoErrorsUnders
  highlight! link CocHintFloat EnfocadoHintsFloats
  highlight! link CocHintHighlight EnfocadoHintsUnders
  highlight! link CocInfoFloat EnfocadoInfosFloats
  highlight! link CocInfoHighlight EnfocadoInfosUnders
  highlight! link CocWarningFloat EnfocadoWarnsFloats
  highlight! link CocWarningHighlight EnfocadoWarnsUnders
  highlight! link CocErrorSign EnfocadoErrors
  highlight! link CocHintSign EnfocadoHints
  highlight! link CocInfoSign EnfocadoInfos
  highlight! link CocWarningSign EnfocadoWarns
  highlight! link CocSelectedText EnfocadoErrors
" }}}
" dashboard-nvim: {{{
  highlight! link DashboardCenter EnfocadoFgs1
  highlight! link DashboardFooter EnfocadoDimmeds
  highlight! link DashboardHeader EnfocadoTitles
  highlight! link DashboardShortCut EnfocadoUnderlineds
" }}}
" vim-floaterm: {{{
  highlight! link FloatTerm EnfocadoPopups
  highlight! link FloatTermBorder EnfocadoAccents
  highlight! link FloatTermNC EnfocadoPopups
" }}}
" fzf.vim: {{{
  " fzf apply enfocado groups.
  if !exists('g:fzf_colors')
    let g:fzf_colors = {
          \ 'fg'     : [ 'fg', 'EnfocadoComments'      ],
          \ 'bg'     : [ 'bg', 'EnfocadoNormal'        ],
          \ 'hl'     : [ 'fg', 'EnfocadoAccents'       ],
          \ 'fg+'    : [ 'fg', 'EnfocadoFgs'           ],
          \ 'bg+'    : [ 'bg', 'EnfocadoAccentsFloats' ],
          \ 'hl+'    : [ 'fg', 'EnfocadoAccents'       ],
          \ 'info'   : [ 'fg', 'EnfocadoInfos'         ],
          \ 'border' : [ 'fg', 'EnfocadoAccents'       ],
          \ 'prompt' : [ 'fg', 'EnfocadoComments'      ],
          \ 'pointer': [ 'fg', 'EnfocadoFgs1'          ],
          \ 'marker' : [ 'fg', 'EnfocadoFgs'           ],
          \ 'spinner': [ 'fg', 'EnfocadoFgs'           ],
          \ 'header' : [ 'fg', 'EnfocadoTitles'        ]
        \ }
  endif

  " Others FZF groups.
  call s:Hl("Fzf1", s:bold, s:bg_2, s:dim_0, s:none)
  call s:Hl("Fzf2", s:none, s:bg_1, s:dim_0, s:none)
  call s:Hl("Fzf3", s:none, s:bg_0, s:dim_0, s:none)
" }}}
" vim-multiple-cursors: {{{
  highlight! link multiple_cursors_cursor EnfocadoCursors
  highlight! link multiple_cursors_visual EnfocadoVisuals
" }}}
" nerdtree: {{{
  highlight! link NERDTreeBookmark EnfocadoKeywords
  highlight! link NERDTreeBookmarkHeader EnfocadoTitles
  highlight! link NERDTreeClosable EnfocadoFgs
  highlight! link NERDTreeCWD EnfocadoComments
  highlight! link NERDTreeDir EnfocadoFgs
  highlight! link NERDTreeDirSlash EnfocadoFgs
  highlight! link NERDTreeExecFile EnfocadoDimmeds
  highlight! link NERDTreeFile EnfocadoFgs
  highlight! link NERDTreeHelp EnfocadoComments
  highlight! link NERDTreeHelpCommand EnfocadoFgs
  highlight! link NERDTreeHelpKey EnfocadoFgs
  highlight! link NERDTreeHelpTitle EnfocadoTitles
  highlight! link NERDTreeLink EnfocadoAccents
  highlight! link NERDTreeLinkDir EnfocadoFgs
  highlight! link NERDTreeLinkFile EnfocadoFgs
  highlight! link NERDTreeLinkTarget EnfocadoDimmeds
  highlight! link NERDTreeOpenable EnfocadoComments
  highlight! link NERDTreeRO EnfocadoInfos
  highlight! link NERDTreeToggleOff EnfocadoComments
  highlight! link NERDTreeToggleOn EnfocadoAccents
  highlight! link NERDTreeUp EnfocadoFgs

  call s:Hl("NERDTreeFile", s:none, s:none, s:fg_0, s:none)
" }}}
" netrw: {{{
  highlight! link netrwClassify EnfocadoFgs
  highlight! link netrwCmdSep EnfocadoComments
  highlight! link netrwComment EnfocadoComments
  highlight! link netrwDir EnfocadoFgs
  highlight! link netrwExe EnfocadoDimmeds
  highlight! link netrwHelpCmd EnfocadoInfos
  highlight! link netrwLink EnfocadoFgs
  highlight! link netrwList EnfocadoComments
  highlight! link netrwPlain EnfocadoFgs
  highlight! link netrwSymLink EnfocadoFgs
  highlight! link netrwVersion EnfocadoComments
" }}}
" rainbow_parentheses.vim: {{{
  if g:enfocado_style == "neon"
    let s:rainbow_guifgs   = [ s:violet[0], s:cyan[0], s:magenta[0], s:br_violet[0] ]
    let s:rainbow_ctermfgs = [ s:violet[1], s:cyan[1], s:magenta[1], s:br_violet[1] ]
  else
    let s:rainbow_guifgs   = [ s:blue[0], s:cyan[0], s:green[0], s:br_blue[0] ]
    let s:rainbow_ctermfgs = [ s:blue[1], s:cyan[1], s:green[1], s:br_blue[1] ]
  endif

  if !exists('g:rainbow_conf')
    let g:rainbow_conf = {}
  endif

  if !has_key(g:rainbow_conf, 'guifgs')
    let g:rainbow_conf['guifgs'] = s:rainbow_guifgs
  endif

  if !has_key(g:rainbow_conf, 'ctermfgs')
    let g:rainbow_conf['ctermfgs'] = s:rainbow_ctermfgs
  endif
"}}}
" vim-signify: {{{
  highlight! link SignifySignAdd EnfocadoDiffsAdds
  highlight! link SignifySignChange EnfocadoDiffsChanges
  highlight! link SignifySignDelete EnfocadoDiffsDeletes
" }}}
" Telescope: {{{
  highlight! link TelescopeBorder EnfocadoDimmeds
  highlight! link TelescopeMatching EnfocadoFg2
  highlight! link TelescopeMultiSelection EnfocadoVisual
  highlight! link TelescopeNormal EnfocadoComments
  highlight! link TelescopePreviewDate EnfocadoFg
  highlight! link TelescopePreviewGroup EnfocadoFg
  highlight! link TelescopePreviewLink EnfocadoConstants
  highlight! link TelescopePreviewMatch EnfocadoKeywords
  highlight! link TelescopePromptPrefix EnfocadoFg
  highlight! link TelescopeSelectionCaret EnfocadoFg
  highlight! link TelescopePreviewRead EnfocadoAlertsOrange
  highlight! link TelescopePreviewSize EnfocadoAlertsGreen
  highlight! link TelescopePreviewUser MoonflyGrey246
  highlight! link TelescopeResultsDiffAdd EnfocadoDiffAdd
  highlight! link TelescopeResultsDiffChange EnfocadoDiffDelete
  highlight! link TelescopeResultsSpecialComment EnfocadoComments
  highlight! link TelescopeTitle EnfocadoComments
  highlight! link TelescopeSelection EnfocadoVisual
" }}}
" Telekasten: {{{
  call s:Hl("tkLink", s:italic, s:none, s:dim_0, s:none)
  highlight! link tkBrackets EnfocadoComments
" }}}
" vim: set foldmethod=marker:
