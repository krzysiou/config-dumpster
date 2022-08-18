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

# ALIASES

alias ohmyzsh="code ~/.oh-my-zsh"
alias zshconfig="code ~/.zshrc"
alias cdp="cd ~/Documents/workspace"
alias cdd="cd ~/Documents"
alias gcam="git commit --am"

# NVM

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion