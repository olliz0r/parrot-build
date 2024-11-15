set number
set expandtab
set autoindent
set softtabstop=4
set shiftwidth=2
set tabstop=4
set nolist

"Enable mouse click for nvim
set mouse=a
"Fix cursor replacement after closing nvim
set guicursor=
"Shift + Tab does inverse tab
inoremap <S-Tab> <C-d>

"wrap to next line when end of line is reached
set whichwrap+=<,>,[,]

command DeletePythonComments :g/^\s*#/d
command DeleteCComments :g/^\s*\/\//d
command DeleteMultilineCComments :%s,/\*\_.\{-}\*/\n,,g
command DeleteAllComments execute 'DeletePythonComments' | execute 'DeleteCComments' | execute 'DeleteMultilineCComments'
