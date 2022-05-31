" plugins
source ~/.dots/vim_plugins/plug.vim
source ~/.dots/vimPlug.vim

filetype on
set nu
set autoread
set mouse=a
set clipboard=unnamed
set autoindent noexpandtab tabstop=4 shiftwidth=4
set expandtab

let g:pymode_python = 'python3'
let g:go_version_warning = 0

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

