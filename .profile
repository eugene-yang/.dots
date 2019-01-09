export PS1="[\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]]\n\[\033[36;1m\]\u\[\033[0m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# export PATH="~/.dots/bin:~/bin:$PATH"

# GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Custom # use custom theme specified in file GIT_PROMPT_THEME_FILE (default ~/.git-prompt-colors.sh)
GIT_PROMPT_THEME_FILE=~/.dots/Custom.bgptemplate
# GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme
source ~/.dots/.bash-git-prompt/gitprompt.sh

unamestr=$(uname)
if [[ "$unamestr" == 'Linux' ]]; then
	alias ls='ls -GFh --color=auto'
elif [[ "$unamestr" == 'FreeBSD' ]]; then
	alias ls='ls -GFh'
elif [[ "$unamestr" == 'Darwin' ]]; then
	# alias ls='ls -GFh'
    alias ls='gls -GFh --group-directories-first --color=auto'
fi

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
