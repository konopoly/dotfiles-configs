export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="minimal"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export CLICOLOR=1

alias vi='nvim'
alias vim='nvim'

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  session_name="terminal-$(date +%s)"  # Generate a unique session name
  tmux new -s "$session_name"
fi
