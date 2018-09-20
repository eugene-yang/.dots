echo "===Start Install Dots Configs==="
echo "User bash config file: " $1
echo "" >> ~/"$1"
echo "# added by dots installation by eugene" >> ~/"$1"
echo "source ~/.dots/.profile" >> ~/"$1"

BASEDIR=$(dirname "$0")

if [ ! -f ~/.dots/.bashgit ]; then
	echo "===Installing bashgit==="
    curl -o ~/.dots/.bashgit https://raw.githubusercontent.com/oyvindstegard/bashgit/master/.bashgit
    . ~/.dots/.bashgit
    git config --global bashgit.showremote true
fi

# vim settings
echo "===Installing vim extensions==="
ln -s ~/.dots/vim_runtime ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
ln -s ~/.dots/vimSetting.vim ~/.dots/vim_runtime/my_configs.vim

# powerline fonts
cd powerline_fonts
./install.sh
cd ../

# tmux settings
ln -s ~/.dots/tmux_files ~/.tmux
ln -s ~/.dots/tmux_files/.tmux.conf ~
ln -s ~/.dots/tmux_files/.tmux.conf.local ~

# ipython profile
if hash ipython 2>/dev/null; then
	echo "===IPython exists, linking profile==="
	ln -s ~/.dots/profile_eugene ~/.ipython/profile_eugene
fi

git config --global user.name "Eugene Yang"
git config --global user.email "eugene2528@gmail.com"

echo "[include]" >> ~/.gitconfig
echo "    path = $BASEDIR/.dots/git.config" >> ~/.gitconfig

echo "===Sorucing the config file==="
source ~/"$1"
