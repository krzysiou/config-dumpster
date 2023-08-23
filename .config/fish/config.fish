set fish_greeting ""

set -gx TERM xterm-256color

# prompt version
set -gx PROMPT_VERSION extensive # simple | extensive

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user tes
set -g theme_hide_hostname no
set -g theme_hostname never

# aliases
alias config "code ~/.config"
alias cdd "cd ~/Documents"
alias cdp "cd ~/ghq/github.com/krzysztof-tluszcz"
alias ls "exa -lg --icons --group-directories-first"
alias ll "exa -lga --icons --group-directories-first"
alias g git
alias gl "git log --stat"
alias gcam "git commit --am"
alias gpl "git pull"
alias gfe "git fetch"
alias gb "git branch -v"
alias gaa "git add ."
alias gcmsg "git commit"
alias gco "git checkout"
alias grst "git reset"
alias grb "git rebase"
alias grbc "git rebase --continue"
alias grba "git rebase --abort"
alias grba "git rebase --abort"
alias gst "git stash --include-untracked"
alias ghco "gh pr checkout"
alias ghco "gh pr checkout"
alias adios "git reset --hard HEAD && git checkout master"
alias so "source ~/.config/fish/config.fish"
alias sign-personal "git config user.email 'krzysztof.kt.tluszcz@gmail.com' && git config user.name 'krzysiou'"
alias sign-professional "git config user.email 'krzysztof.tluszcz@schibsted.com' && git config user.name 'Krzysztof Tłuszcz'"
alias unsign "git config --unset user.email && git config --unset user.name"

command -qv nvim && alias vim nvim

set -gx EDITOR "code -w"

set -x LESS "-R"

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end
