export PS1="[\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]]\n\[\033[36;1m\]\u\[\033[0m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export PATH="~/.dots/bin:~/bin:$PATH"

# GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Custom # use custom theme specified in file GIT_PROMPT_THEME_FILE (default ~/.git-prompt-colors.sh)
GIT_PROMPT_THEME_FILE=~/.dots/Custom.bgptemplate
GIT_PROMPT_FETCH_REMOTE_STATUS=0
GIT_PROMPT_SHOW_UNTRACKED_FILES=no
GIT_PROMPT_IGNORE_SUBMODULES=1
# GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme
source ~/.dots/.bash-git-prompt/gitprompt.sh
alias gp=git_prompt_toggle

unamestr=$(uname)
if [[ "$unamestr" == 'Linux' ]]; then
	alias ls='ls -GFh --color=auto --group-directories-first'
elif [[ "$unamestr" == 'FreeBSD' ]]; then
	alias ls='ls -GFh'
elif [[ "$unamestr" == 'Darwin' ]]; then
	# alias ls='ls -GFh'
    alias ls='gls -GFh --group-directories-first --color=auto'
fi

alias ll='ls -lX'
alias la='ls -alX'
alias l='ls'

# for ptt
alias ptt='ssh bbsu@ptt.cc'

alias python=python3
alias ipython='ipython --profile=eugene'
alias pjson='python -m json.tool'
alias pbar='python ~/.dots/python_cli/pbar.py'

alias mlustre='sudo sshfs ey120@devtty0:/lustre /lustre -F ~/.ssh/config -o allow_other,defer_permissions,reconnect,ServerAliveInterval=15,ServerAliveCountMax=3'
alias umlustre='sudo umount -f /lustre'

# Custome commands
alias gitpage-watch='jekyll serve --watch'

# Custome functions
bc(){ python -c "print("$1")"; }
pane-name(){ printf '\033]2;%s\033\\' $1; }
alias pn='pane-name'

# isin()[[ " $2 " =~ " $1 " ]]
isin()[[ $2 =~ (^|[[:space:]])$1($|[[:space:]]) ]]

