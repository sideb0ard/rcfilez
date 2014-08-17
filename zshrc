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
alias vs='vagrant ssh'

alias cdc='cd ~/Code'
alias cdn='cd ~/NewCodez'
alias cdd="cd ~/NewCodez/net-admin"
alias cdv="cd ~/Vagrantz"
alias v="vagrant"
alias vs="vagrant ssh"
alias h="history -100 -1"

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=${JAVA_HOME}/bin:${HOME}/Scriptz:${HOME}/google-cloud-sdk/bin:${PATH}
export EDITOR=vim
export VISUAL=vim
export HISTSIZE=1000
export SAVEHIST=1000
