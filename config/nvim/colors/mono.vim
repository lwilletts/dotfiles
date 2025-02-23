" an eight bit colour scheme

let colors_name="subtle"

if exists("syntax_on")
    syntax reset
endif

hi clear
set background=dark

    " vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

hi Todo         ctermfg=0    ctermbg=3    cterm=NONE
hi Title        ctermfg=1    ctermbg=NONE cterm=NONE
hi Error        ctermfg=0    ctermbg=1    cterm=NONE
hi Normal       ctermfg=7    ctermbg=NONE cterm=NONE
hi NonText      ctermfg=7    ctermbg=NONE cterm=NONE
hi LineNr       ctermfg=7    ctermbg=NONE cterm=NONE
hi Folded       ctermfg=7    ctermbg=0    cterm=NONE
hi Visual       ctermfg=7    ctermbg=6    cterm=NONE
hi ErrorMsg     ctermfg=1    ctermbg=0    cterm=NONE
hi Directory    ctermfg=3    ctermbg=0    cterm=NONE
hi Underlined   ctermfg=7    ctermbg=NONE cterm=UNDERLINE
hi WarningMsg   ctermfg=1    ctermbg=NONE cterm=NONE
hi FoldColumn   ctermfg=4    ctermbg=NONE cterm=NONE
hi SignColumn   ctermfg=0    ctermbg=NONE cterm=NONE

hi Cursor       ctermfg=7    ctermbg=NONE cterm=NONE
hi CursorLine   ctermfg=NONE ctermbg=NONE cterm=NONE

hi Search       ctermfg=0    ctermbg=4    cterm=NONE
hi IncSearch    ctermfg=0    ctermbg=4    cterm=NONE

hi VertSplit    ctermfg=NONE ctermbg=0    cterm=NONE
hi ColorColumn  ctermfg=0    ctermbg=6    cterm=NONE
hi StatusLine   ctermfg=6    ctermbg=NONE cterm=NONE
hi StatusLineNC ctermfg=0    ctermbg=NONE cterm=NONE

hi Pmenu        ctermfg=7    ctermbg=0    cterm=NONE
hi PmenuSel     ctermfg=0    ctermbg=7    cterm=NONE
hi PmenuSbar    ctermfg=6    ctermbg=NONE cterm=NONE
hi WildMenu     ctermbg=0    ctermbg=7    cterm=NONE

hi SpellBad     ctermfg=0    ctermbg=1    cterm=UNDERLINE
" hi SpellCap
" hi SpellLocal
" hi SpellRare

    " syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

hi Type         ctermfg=7    ctermbg=NONE cterm=NONE
hi String       ctermfg=7    ctermbg=NONE cterm=NONE
hi Number       ctermfg=7    ctermbg=NONE cterm=NONE
" NULL SIGTERM
hi Special      ctermfg=7    ctermbg=NONE cterm=NONE
hi Comment      ctermfg=1    ctermbg=NONE cterm=NONE
" value
hi PreProc      ctermfg=4    ctermbg=NONE cterm=NONE
hi Boolean      ctermfg=3    ctermbg=NONE cterm=NONE
hi Constant     ctermfg=4    ctermbg=NONE cterm=NONE
hi Function     ctermfg=7    ctermbg=NONE cterm=NONE
hi Statement    ctermfg=3    ctermbg=NONE cterm=NONE
" tabs whitespace
hi SpecialKey   ctermfg=7    ctermbg=NONE cterm=NONE
hi Identifier   ctermfg=7    ctermbg=NONE cterm=NONE
hi MatchParen   ctermfg=1    ctermbg=NONE cterm=NONE

    " diffs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

hi DiffAdd      ctermfg=2    ctermbg=NONE cterm=NONE
hi DiffText     ctermfg=2    ctermbg=NONE cterm=NONE
hi DiffChange   ctermfg=7    ctermbg=NONE cterm=NONE
hi DiffDelete   ctermfg=1    ctermbg=NONE cterm=NONE

" what the
hi TabLine      ctermfg=7    ctermbg=NONE cterm=NONE
hi TabLineSel   ctermfg=7    ctermbg=NONE cterm=NONE
hi TabLineFill  ctermfg=7    ctermbg=NONE cterm=NONE
hi Question     ctermfg=NONE ctermbg=NONE cterm=NONE

    " plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

hi ALEError                  ctermfg=NONE ctermbg=NONE cterm=NONE
hi ALEErrorSign              ctermfg=0    ctermbg=1    cterm=NONE
hi ALEErrorSignLineNr        ctermfg=NONE ctermbg=NONE cterm=NONE
hi ALEWarning                ctermfg=NONE ctermbg=NONE cterm=NONE
hi ALEWarningLine            ctermfg=NONE ctermbg=NONE cterm=NONE
hi ALEWarningSign            ctermfg=0    ctermbg=4    cterm=NONE
hi ALEWarningSignLineNr      ctermfg=NONE ctermbg=NONE cterm=NONE
hi ALEStyleError             ctermfg=5    ctermbg=NONE cterm=NONE
hi ALEStyleErrorSign         ctermfg=0    ctermbg=5    cterm=NONE
hi ALEStyleErrorSignLineNr   ctermfg=NONE ctermbg=NONE cterm=NONE
hi ALEStyleWarning           ctermfg=5    ctermbg=NONE cterm=NONE
hi ALEStyleWarningSign       ctermfg=0    ctermbg=5    cterm=NONE
hi ALEStyleWarningSignLineNr ctermfg=NONE ctermbg=NONE cterm=NONE

hi ALEInfo                   ctermfg=NONE ctermbg=NONE cterm=NONE
hi ALEInfoSign               ctermfg=NONE ctermbg=NONE cterm=NONE
hi ALEInfoLine               ctermfg=NONE ctermbg=NONE cterm=NONE
hi ALEInfoSignLineNr         ctermfg=NONE ctermbg=NONE cterm=NONE
