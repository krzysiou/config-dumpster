# ENV

export ZSH="/Users/krzysiektluszcz/.oh-my-zsh"
export EDITOR=nano
export VISUAL=$EDITOR

DEFAULT_USER=$(whoami)

# THEME

ZSH_THEME="krzysiou"

# PLUGINS

plugins=(git)
source $ZSH/oh-my-zsh.sh

# LS COLORS

export LICOLORS=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# ALIASES

alias ohmyzsh="code ~/.oh-my-zsh"
alias zshconfig="code ~/.zshrc"
alias cdd="cd ~/Documents"
alias cdp="cd ~/Documents/workspace"
alias ls="ls -lG"
alias gl="git log --stat"
alias gcam="git commit --am"
alias gpl="git pull"
alias gfe="git fetch"

# NVM

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion