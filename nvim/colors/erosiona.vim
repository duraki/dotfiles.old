set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "erosiona"

" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine 		guibg=#2e2926 
  hi CursorColumn 		guibg=#2e2926 
  hi MatchParen 		guifg=#f6f3e8 guibg=#bea492 gui=bold 
  hi Pmenu 			guifg=#f6f3e8 guibg=#332d29 
  hi PmenuSel 			guifg=#080807 guibg=#b8d154 
endif


" General colors
hi Cursor 			guifg=NONE    guibg=#676b57 gui=none 
hi Normal 			guifg=#f6f3f0 guibg=1F1F1F gui=none ctermbg=8 
hi NonText 			guifg=#7e8066 guibg=1F1F1F gui=none 
hi LineNr 			guifg=#676b57 guibg=#181512 gui=none 
hi StatusLine 			guifg=#f6f3e8 guibg=#332d29 gui=italic
hi StatusLineNC 		guifg=#bea492 guibg=#332d29 gui=none
hi VertSplit 			guifg=#332d29 guibg=#332d29 gui=none 
hi Folded			guibg=#464838 guifg=#a7b08f gui=none
hi Title			guifg=#d3e7a4 guibg=NONE	gui=bold 
hi Visual			guifg=#f0fff1 guibg=#332d29 gui=none 
hi SpecialKey			guifg=#7e8066 guibg=#33342e gui=none
hi Directory                 	guifg=#A0CF5D 

" Syntax highlighting
hi Comment			guifg=#7e8066 gui=italic 
hi Todo				guifg=#8f8f8f gui=italic 
hi Constant 			guifg=#d7ceca gui=none 
hi String 			guifg=#857b52 gui=italic 
hi Identifier 			guifg=#8c644c gui=none 
hi Function			guifg=#857b52 gui=none 
hi Type				guifg=#908a66 gui=none 
hi Statement			guifg=#9a875f gui=none 
hi Keyword			guifg=#c5da78 gui=none 
hi PreProc			guifg=#a3ba59 gui=none 
hi Number			guifg=#a3ba59 gui=none 
hi Special			guifg=#809163 gui=none 
hi ColorColumn                  guibg=#181818
hi Search                       guibg=#1f1f1f guifg=#afaf5f

