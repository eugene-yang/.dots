
if hash conda 2> /dev/null && ! hash ipython 2> /dev/null; then
    read -p "Install IPython in current environment?([y]/n) " yn
    case $yn in
        [Nn]* )  exit;;
        * ) conda install ipython --yes;;
    esac
fi


if [ ! -e ~/.ipython/profile_eugene ]; then
	echo "===IPython exists, linking profile==="
    ln -s ~/.dots/profile_eugene ~/.ipython/profile_eugene
fi
echo "===Make sure essential packages are installed==="
conda install ipython numpy scipy pandas
pip install pyperclip


