" Vim syntax file

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

if version < 508
  command! -nargs=+ HiLink hi link <args>
else
  command! -nargs=+ HiLink hi def link <args>
endif

syn case ignore

syn match todoProject	/^-\s\+\(\s\+@[^ \t(]\+\(([^)]*)\)\?\)$/ contains=todoContext
syn match todoProject	/^-\s\+.*$/
syn match todoProject	/^[a-zA-Z0-9 \-()]\+$/ contains=todoTicked
syn match todoItem	/^\t\+-/
syn match todoItem	/^\t\+\*/
syn match todoItemUrg	/^\t\+!.*$/
syn match todoItemLow	/^\t\+v.*$/
syn match todoItemUrg	/FIXME/
syn match todoItemUrl	/https\?:\/\/\(\w\+\(:\w\+\)\?@\)\?\([A-Za-z][-_0-9A-Za-z]*\.\)\{1,}\(\w\{2,}\.\?\)\{1,}\(:[0-9]\{1,5}\)\?\S*/
syn match todoTODO	/^\t\+-.\{-}:/
syn match todoComment	/\(^\t*\)\@<=#.*$/
syn match todoQuestion	/^\t*?.*$/
syn match todoTicked	/\tx.*/
syn match todoCode	/`.\{-}`/
syn match todoContext	/\s\zs@[^ \t(]\+\(([^)]*)\)\?/
syn match todoContextH	/\s\zsH@[^ \t(]\+\(([^)]*)\)\?/
syn match todoContextS	/\s\zsS@[^ \t(]\+\(([^)]*)\)\?/
syn match todoTime	/\[.\{-}\]/
syn match todoDone	/^.*\s@done\(\(\s\|([^)]*)\).*\)\?$/
syn match todoCancelled	/^.*\s@cancelled\(\(\s\|([^)]*)\).*\)\?$/

syn sync fromstart

"highlighting for todo groups
HiLink todoItem		Identifier
HiLink todoItemUrg	ErrorMsg
HiLink todoItemLow	Comment
HiLink todoItemUrl	Identifier
HiLink todoCode		String
HiLink todoContext	Special
HiLink todoContextS	Special
HiLink todoContextH	SpecialChar
HiLink todoTime		String
HiLink todoProject	StatusLine
HiLink todoDone		NonText
HiLink todoCancelled	NonText
HiLink todoTodo		Keyword
HiLink todoQuestion	Comment
HiLink todoComment	Todo
HiLink todoTicked	Comment

let b:current_syntax = "todo"

delcommand HiLink

" Set the fold method to indent but force all folds to start as open
setlocal foldmethod=indent
setlocal foldlevel=20

" vim: ts=8
