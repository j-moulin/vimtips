Vimtips
=======

## Description

Some tips for Vim newbies

## Index
* auto-gen TOC:
{:toc}

* [Create a backup file for the current buffer]()


### Create a backup file for the current buffer 

 	function! WriteBackup()
 		let l:time = strftime( "__%Y-%m-%d__%H%M%S__.")
 		let l:name = expand("%p:r").l:time.expand("%p:e")
 		execute "w ".fnameescape(l:name)
 	endfunction
 	" Create a map key
 	nnoremap <leader>b <esc>:call WriteBackup()<cr>

This will produce for "sample.txt", a backup in the current directory
with the name "sample__2013-01-31__142434__.txt"
 
