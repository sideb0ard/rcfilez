# Sources
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
if [[ -s "${HOME}/.nvm/nvm.sh" ]]; then
  source "${HOME}/.nvm/nvm.sh"
fi
if [[ -s "${HOME}/.awscredz" ]]; then
  source $HOME/.awscredz
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
alias cda='cd ~/Ansible'
alias cdc='cd ~/Code'
alias cdc='cd ~/Code'
alias cdg='cd ~/Golang'
alias cdgs='cd $GOPATH/src/github.com/sideb0ard/'
alias ws='/Applications/Wireshark.app/Contents/MacOS/Wireshark'
alias rs='redis-server /usr/local/etc/redis.conf'
alias sssh='ssh -i ~/.ssh/puppet-staging.pem'

alias cds='cd ~/Scriptz'
alias cdn='cd ~/NewCodez'
alias cdb='cd ~/NewCodez/TheB0ardside'
alias cdd="cd ~/NewCodez/net-admin"
alias cdt='cd ~/NewCodez/thingieboab'
alias h="history -10000 -1"
# alias hugo="hugo server --appendPort=false -b http://theb0ardside.com --source=/Users/sideb0ard/NewCodez/TheB0ardside/ "
alias hugo="hugo server -b http://theb0ardside.com --source=/Users/sideboard/NewCodez/TheB0ardside/"
alias c="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias cg="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome https://github.com/sideb0ard"
alias eh="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome /Users/sideboard/NewCodez/elasticsearch-head/index.html"
alias s3sync="aws s3 sync /Users/sideboard/NewCodez/TheB0ardside/public s3://theb0ardside.com ; cd /Users/sideboard/NewCodez/TheB0ardside; git add -A && git commit -m \"s3sync backup\" -a && git push"

# EXPORTS
#
export PS1="
%F{135}%n%f||%F{166}GBox%f
%F{118}%~%f ${vcs_info_msg_0_}$python_info[virtualenv]$ "

export GOPATH="${HOME}/Golang"
export GOROOT=`go env GOROOT`
export JAVA_HOME=$(/usr/libexec/java_home)
export EDITOR=vim
export VISUAL=vim
export HISTSIZE=1000
export SAVEHIST=1000
export PATH=${JAVA_HOME}/bin:${HOME}/Scriptz:${HOME}/bin:${HOME}/google-cloud-sdk/bin:${PATH}:${GOPATH}/bin/

# NODE / NVM
export NVM_DIR="/Users/sideboard/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  

