# if we are not in tmux, try to fix that
if [ -z "$TMUX" ]; then
	tmux -2 attach-session -d || tmux -2 new-session
fi

export LS_COLORS=`cat ~/.dir_colors`

export ZSH=/home/$USER/.oh-my-zsh
ZSH_THEME="hipster"
plugins=(git kubectl)
source $ZSH/oh-my-zsh.sh

alias ll="ls -lah"
alias rlsh="source ~/.zshrc"
alias l="ls -m"
alias recent='find . -type f -print0 | xargs -0 stat --format '\''%Y :%y %n'\'' | sort -nr | cut -d: -f2- | head'

alias rlterm="xrdb -merge ~/.Xresources"
alias rlnot="killall dunst; notify-send foo"

# docker funsies
alias dc="docker-compose"
alias dcu="docker-compose up"
alias dcr="docker-compose rm"
# kubernetes
alias k8=kubectl

export GOPATH="/home/$USER/golang"

export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_SCRIPT=$HOME/.local/bin/virtualenvwrapper.sh
#source ~/.local/bin/virtualenvwrapper_lazy.sh

#export PROJECT_HOME=$HOME/code
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=~/.local/bin/virtualenv
#export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'

source $HOME/.local/bin/virtualenvwrapper.sh

export VISUAL=nvim
export EDITOR="$VISUAL"
export PATH=$PATH:/home/ohan/.local/bin:$GOPATH/bin

xset b off

# functions
function dns() {
	if [ -z "$2" ]
	then
		q=a
	else
		q=$2
	fi
	echo $1 | zdns $q | jq
}

function nkill() {
	ps aux | grep "$1$" | awk '{print $2}' | xargs kill $2
}


