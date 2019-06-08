echo "===Start Install Dots Configs==="
echo "User bash config file: " $1
echo "" >> ~/"$1"
echo "# added by dots installation by eugene" >> ~/"$1"
echo "source ~/.dots/.profile" >> ~/"$1"

BASEDIR=$(dirname "$0")


# vim settings
echo "===Installing vim extensions==="
ln -s ~/.dots/vim_runtime ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
ln -s ~/.dots/vimSetting.vim ~/.dots/vim_runtime/my_configs.vim

# powerline fonts
echo "==Install Powerline fonts==="
cd powerline_fonts
./install.sh
cd ../

# tmux settings
echo "===Linking tmux settings==="
ln -s ~/.dots/tmux_files ~/.tmux
ln -s ~/.dots/tmux_files/.tmux.conf ~
ln -s ~/.dots/tmux_files/.tmux.conf.local ~

# ipython profile
sh ~/.dots/install_pythonenv.sh

echo "===Setting my own git name and email==="
git config --global user.name "Eugene Yang"
git config --global user.email "eugene2528@gmail.com"

echo "===And git settings==="
echo "[include]" >> ~/.gitconfig
echo "    path = $BASEDIR/.dots/git.config" >> ~/.gitconfig

echo "===Sorucing the config file==="
source ~/"$1"
