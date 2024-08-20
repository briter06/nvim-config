call plug#begin()
	Plug 'nvim-tree/nvim-tree.lua'
	Plug 'nvim-tree/nvim-web-devicons'
call plug#end()

set number

lua require('config')
lua require('nvim-tree-config')


" Function to open a terminal in a bottom split
function! OpenTerminalAtBottom()
  execute 'below split | terminal'
endfunction

" Call the function on startup
autocmd VimEnter * call OpenTerminalAtBottom()


" Open the tree
autocmd VimEnter * NvimTreeOpen