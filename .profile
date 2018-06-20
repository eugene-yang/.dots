export PS1="[\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]]\n\[\033[36;1m\]\u\[\033[0m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# export PATH="~/.dots/bin:~/bin:$PATH"

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
alias l='ls'

# for ptt
alias ptt='ssh bbsu@ptt.cc'

alias ipython='ipython --profile=eugene'
alias pjson='python -m json.tool'
alias pbar='python ~/.dots/python_cli/pbar.py'

# Custome commands
alias gitpage-watch='jekyll serve --watch'

# Custome functions
bc(){ python -c "print("$1")"; }
