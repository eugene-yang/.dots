export PS1="[\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]]\n\[\033[36;1m\]\u\[\033[0m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

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
alias tmux='tmux -f ~/.dots/tmux.config'

alias ipython='ipython --profile=eugene'
alias pjson='python -m json.tool'

# Custome commands
alias gitpage-watch='jekyll serve --watch'

# Custome functions
bc(){ python -c "print("$1")"; }
bar(){ 
    spin='-\|/'
    total=$2
    while true; do 
        max=$(($(tput cols)-${#total}*2-10))
        c=$(eval $1)
        p=$( printf "%.0f" $(bc $c/$total*$max) )
        r=$( printf ".%.0s" $(seq 1 $(bc $max-$p)) )
        for i in 0 1 2 3; do
            echo -ne "\r[" $c/$total $(printf ">%.0s" $(seq 1 $p))$(printf "${spin:$i:1}")$r ]
            sleep 0.1
        done
    done 
}
progress(){ while true; do c=$(eval $1); echo -ne "\rCurrent Progress:" $c / $2 " ("$(printf "%2.2f" $(bc $c/$2*100) )")%"; sleep 0.5 ; done }



