" plugins
source ~/.dots/vim_plugins/plug.vim
source ~/.dots/vimPlug.vim

set nu
set autoread
set mouse=a
set clipboard=unnamed
set autoindent noexpandtab tabstop=4 shiftwidth=4

" system copy for mac
nmap '' :.w !pbcopy<CR><CR>
vmap '' :'<,'>.w !pbcopy<CR><CR>

" custom keymap
nmap T :tabedit 
nmap X :x<CR>
nmap S :w<CR>
nmap B :NERDTreeToggle<CR>


" NERDTree
let NERDTreeMapOpenInTab='<ENTER>'

