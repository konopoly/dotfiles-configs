export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

if [ "$TMUX" = "" ]; then tmux; fi

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias vi='nvim'
alias vim='nvim'
