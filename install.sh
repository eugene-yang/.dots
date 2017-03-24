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

if [ ! -f ~/.dots/.vim_runtime ]; then
	echo "===Installing vim extensions==="
	git clone https://github.com/amix/vimrc.git ~/.dots/.vim_runtime
	ln -s ~/.dots/.vim_runtime ~/.vim_runtime
	sh ~/.vim_runtime/install_basic_vimrc.sh
	echo "" >> ~/.vimrc
	echo "\" add by dots installation by eugene" >> ~/.vimrc
	echo "set number" >> ~/.vimrc
fi

git config --global user.name "Eugene Yang"
git config --global user.email "eugene2528@gmail.com"

echo "===Sorucing the config file==="
source ~/"$1"