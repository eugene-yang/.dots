set nu
set mouse=a
set clipboard=unnamed
set autoindent noexpandtab tabstop=4 shiftwidth=4

nmap '' :.w !pbcopy<CR><CR>
vmap '' :w !pbcopy<CR><CR>
source ~/.dots/vim_plugins/plug.vim
source ~/.dots/vimPlug.vim
