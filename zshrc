# Sources
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
if [[ -s "${HOME}/.nvm/nvm.sh" ]]; then
  source "${HOME}/.nvm/nvm.sh"
fi

# ALIASES
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
alias cdd="cd ~/NewCodez/net-admin"
alias cdt='cd ~/NewCodez/Tidal'
alias h="history -100 -1"

# EXPORTS
#
export PS1="%F{135}%n%f||%F{166}DCMachine%f
%F{118}%~%f ${vcs_info_msg_0_}$python_info[virtualenv]$ "

export GOPATH="/Users/thorsten/Golang"
export GOROOT=`go env GOROOT`
export JAVA_HOME=$(/usr/libexec/java_home)
export EDITOR=vim
export VISUAL=vim
export HISTSIZE=1000
export SAVEHIST=1000
export PATH=${JAVA_HOME}/bin:${HOME}/Scriptz:${HOME}/google-cloud-sdk/bin:${PATH}
