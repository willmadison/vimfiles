" vim: tw=0 ts=4 sw=4
" Vim color file
"
" Creator: Chris Willard
"

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "goldness"
hi Normal		  ctermfg=yellow guifg=#ddbb00  guibg=black
hi Scrollbar	  ctermfg=Yellow guifg=#ddbb00  guibg=black
hi Menu			  ctermfg=darkyellow guifg=#ffddaa  guibg=black
hi SpecialKey	  ctermfg=yellow term=bold  cterm=bold  guifg=#ffddaa 
hi NonText		  ctermfg=LightBlue term=bold  cterm=bold  gui=bold	guifg=#DBCA98
hi Directory	  ctermfg=DarkYellow term=bold  cterm=bold  guifg=#ffddaa
hi ErrorMsg		  term=standout  cterm=bold  ctermfg=White  ctermbg=Red  guifg=White  guibg=Red
hi Search		  term=reverse	ctermfg=white  ctermbg=red	guifg=white  guibg=Red
hi MoreMsg		  term=bold  cterm=bold  ctermfg=Yellow	gui=bold  guifg=#ddbb00
hi ModeMsg		  term=bold  ctermfg=DarkYellow cterm=bold  gui=bold  guifg=Black	guibg=#ddbb00
hi LineNr		  term=underline ctermfg=Brown cterm=bold guifg=#978345
hi Question		  term=standout  cterm=bold  ctermfg=Brown	gui=bold  guifg=#ffddaa
hi StatusLine	  term=bold,reverse  cterm=bold ctermfg=Black ctermbg=DarkGrey gui=bold guifg=#978345 guibg=#2E2E2E
hi StatusLineNC   term=reverse	ctermfg=white ctermbg=black guifg=grey guibg=#3E3E3E
hi Title		  term=bold  cterm=bold  ctermfg=brown  gui=bold	guifg=#DBCA98
hi Visual       ctermfg=darkgray ctermbg=white
hi WarningMsg	  term=standout  cterm=bold  ctermfg=darkblue  guifg=Red
hi Cursor		  guifg=bg	guibg=#FF5E06 ctermbg=Brown
hi Comment		  term=bold  cterm=bold ctermfg=219  guifg=#978345
hi Constant		  term=underline  cterm=bold ctermfg=grey  guifg=Red
hi Special		  term=bold  cterm=bold ctermfg=red guifg=Orange
hi Identifier	  term=underline ctermfg=white  guifg=#DBCA98
hi Statement	  term=bold  cterm=bold ctermfg=lightgreen	gui=bold  guifg=#ffff60
hi PreProc		  term=underline  ctermfg=brown	guifg=#ffddaa
hi Type			  term=underline  cterm=bold ctermfg=lightgreen  gui=bold  guifg=#FFE13F
hi Error		  term=reverse	ctermfg=darkcyan  ctermbg=black  guifg=Red	guibg=Black
hi Todo			  term=standout  ctermfg=black	ctermbg=yellow  guifg=#FFE13F  guibg=#2E2E2E
hi VertSplit      guifg=#2E2E2E guibg=#978345 ctermfg=black ctermbg=darkgrey
hi Folded		  guifg=orange  guibg=#2E2E2E ctermfg=yellow
hi Function ctermfg=yellow
hi Operator ctermfg=darkcyan
hi link IncSearch		Visual
hi link String			Constant
hi link Character		Constant
hi link Number			Constant
hi link Boolean			Constant
hi link Float			Number
hi link Function		Identifier
hi link Conditional		Statement
hi link Repeat			Statement
hi link Label			Statement
hi link Keyword			Statement
hi link Exception		Statement
hi link Include			PreProc
hi link Define			PreProc
hi link Macro			PreProc
hi link PreCondit		PreProc
hi link StorageClass	Type
hi link Structure		Type
hi link Typedef			Type
hi link Tag				Special
hi link SpecialChar		Special
hi link Delimiter		Special
hi link SpecialComment	Special
hi link Debug			Special

