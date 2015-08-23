################################################################################

# PROMPT

sh_norm="\[\033[0m\]"
sh_black="\[\033[0;30m\]"
sh_darkgray="\[\033[1;30m\]"
sh_blue="\[\033[0;34m\]"
sh_light_blue="\[\033[1;34m\]"
sh_green="\[\033[0;32m\]"
sh_light_green="\[\033[1;32m\]"
sh_cyan="\[\033[0;36m\]"
sh_light_cyan="\[\033[1;36m\]"
sh_red="\[\033[0;31m\]"
sh_light_red="\[\033[1;31m\]"
sh_purple="\[\033[0;35m\]"
sh_light_purple="\[\033[1;35m\]"
sh_brown="\[\033[0;33m\]"
sh_yellow="\[\033[1;33m\]"
sh_light_gray="\[\033[0;37m\]"
sh_white="\[\033[1;37m\]"

case `whoami` in
    "root") UCOLOUR=${sh_red};;
    *)      UCOLOUR=${sh_blue} ;;
esac

export PROMPT_COMMAND='if [ $? -ne 0 ];then ERROR_FLAG=1;else ERROR_FLAG=;fi; '
export PS1=${UCOLOUR}'\u'${sh_norm}'@'${sh_cyan}'\h'${sh_white}' [\w]\n'${sh_norm}'${ERROR_FLAG:+'${sh_light_red}'}\$${ERROR_FLAG:+'${sh_norm}'} '

################################################################################
# IFFY STUFF

if [[ -s "${HOME}/.nvm/nvm.sh" ]]; then
  source "${HOME}/.nvm/nvm.sh"
fi
if [[ -s "${HOME}/.awscredz" ]]; then
  source $HOME/.awscredz
fi

################################################################################
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
alias ws='/Applications/Wireshark.app/Contents/MacOS/Wireshark'
alias sssh='ssh -i ~/.ssh/puppet-staging.pem'

alias ls='ls -G'
alias ll='ls -Gal'
alias l='ls -Gal'

alias cda='cd ~/Ansible'
alias cdg='cd ~/Golang'
alias cdgs='cd $GOPATH/src/github.com/sideb0ard/'
alias cdc='cd ~/Code'
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

################################################################################
# EXPORTS

export GOPATH="${HOME}/Golang"
# export GOROOT=`go env GOROOT`
export VISUAL=vim
export HISTSIZE=1000
export SAVEHIST=1000
export PATH=${JAVA_HOME}/bin:${HOME}/Scriptz:${HOME}/bin:${HOME}/google-cloud-sdk/bin:${PATH}:${GOPATH}/bin/

export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt
