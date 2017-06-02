export LS_COLORS=`cat ~/.dir_colors`
export ZSH=/home/$USER/.oh-my-zsh
ZSH_THEME="hipster"
plugins=(git)
source $ZSH/oh-my-zsh.sh
alias ll="ls -lah"
alias rlsh="source ~/.zshrc"
alias l="ls -m"
export GOPATH="/home/$USER/golang"
