#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
#
export GOPATH="/Users/thorsten/Golang"
export GOROOT=`go env GOROOT`

export JAVA_HOME=$(/usr/libexec/java_home)

alias r='rabbitmq-server'
alias gf='go fmt'
alias gb='go build'
alias b='brew'
alias bs='brew search'
alias bi='brew install'
alias v='vagrant'
alias cdv='cd ~/Vagrantz'
alias vs='vagrant ssh'
alias cdc='cd ~/Code'
alias cds='cd ~/Scriptz'
alias cdn='cd ~/NewCodez'
alias cdt='cd ~/NewCodez/Tidal'

source ~/.nvm/nvm.sh

export PS1="%F{135}%n%f||%F{166}DCMachine%f
%F{118}%~%f ${vcs_info_msg_0_}$python_info[virtualenv]$ "
