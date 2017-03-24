export PS1="[\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]]\n\[\033[36;1m\]\u\[\033[0m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

BASEDIR=$(dirname "$0")

if [ ! -f ~/.dots/.bashgit ]; then
    mkdir ~/.dots
    curl -o ~/.dots/.bashgit https://raw.githubusercontent.com/oyvindstegard/bashgit/master/.bashgit
fi

if [ -f ~/.dots/.bashgit ]; then
    . ~/.dots/.bashgit
    git config --global bashgit.showremote true
fi

alias ls='ls -GFh'
alias ll='ls -l'
alias la='ls -al'

# Custome commands
alias gitpage-watch='jekyll serve --watch'
