" StatusLine v 0.1.0
" jм»

" always show statusline and fix appearence
set laststatus=2
highlight Statusline term=reverse,bold cterm=reverse,bold gui=reverse,bold
highlight StatuslineNC term=reverse cterm=reverse gui=reverse

" setting all
set statusline+=%1* 			" Color User1
set statusline=\ %f 			" filename
set statusline+=%* 				" end Color

set statusline+=%2* 			" Color User2
set statusline+=\ %w%h%m%r 		" flags Preview, Help, +/-, Read Only
set statusline+=%* 				" end Color

set statusline+=%3* 			" Color User3
set statusline+=\ jм»\  		" logo
set statusline+=%* 				" end Color

set statusline+=\ %< 			" overwrite here

set statusline+=%4* 			" Color User4
set statusline+=%40.{expand('%:p:h')} 	" filename directory
set statusline+=%* 				" end Color

set statusline+=%= 				" right align	
"set statusline+=\ [%03.3b\ 0x%02.B] 	" character under cursor in dec and hex

set statusline+=%5* 		" Color User5
set statusline+=\ <\ %{&ff} 	" file format, unix, dos
set statusline+=\ <\ %{&fenc} 	" file encoding, latin1, utf-8
set statusline+=\ <\ %{&enc} 	" encoding, utf-8
set statusline+=\ <\%3.3p%% 	" percentage in file
set statusline+=\ <\ %l,%c 		" line, column
set statusline+=%* 				" end Color

set statusline+=%6* 			" Color User6
set statusline+=\ %6.{toupper(&syntax)}\ 		" type VIM, HELP, PHP,
set statusline+=%* 				" end Color

" setting colors jм»
"highlight User1  gui=reverse,bold guibg=lightblue 	" filename
"highlight User2  gui=reverse,bold guibg=lightgray 	" flags
highlight User3  gui=reverse,bold guibg=peru 	 	" logo
highlight User4  gui=reverse,bold guibg=lightblue 	" directory
highlight User5  gui=reverse,bold guibg=lightgray 	" encoding
"highlight User6  gui=reverse,bold guibg=#00b000 	" file type

