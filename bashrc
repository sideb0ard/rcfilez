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

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PROMPT_COMMAND='if [ $? -ne 0 ];then ERROR_FLAG=1;else ERROR_FLAG=;fi; '
# export PS1=${UCOLOUR}'\u'${sh_norm}'@'${sh_cyan}'\h'${sh_white}' [\w]'${sh_green}$(parse_git_branch)'\n'${sh_norm}'${ERROR_FLAG:+'${sh_light_red}'}\$${ERROR_FLAG:+'${sh_norm}'} '
export PS1="${UCOLOUR}\u${sh_norm}${sh_white} [\w]${sh_green} \$(parse_git_branch)\n${sh_norm}${ERROR_FLAG:+'${sh_light_red}'}\$${ERROR_FLAG:+'${sh_norm}'} "
man() {
        env \
            LESS_TERMCAP_mb=$(printf "\x1b[38;2;255;200;200m") \
            LESS_TERMCAP_md=$(printf "\x1b[38;2;255;100;200m") \
            LESS_TERMCAP_me=$(printf "\x1b[0m") \
            LESS_TERMCAP_so=$(printf "\x1b[38;2;60;90;90;48;2;40;40;40m") \
            LESS_TERMCAP_se=$(printf "\x1b[0m") \
            LESS_TERMCAP_us=$(printf "\x1b[38;2;150;100;200m") \
            LESS_TERMCAP_ue=$(printf "\x1b[0m") \
            man "$@"
}

################################################################################
# IFFY STUFF

# if [[ -s "${HOME}/.nvm/nvm.sh" ]]; then
#   source "${HOME}/.nvm/nvm.sh"
# fi
# if [[ -s "${HOME}/.awscredz" ]]; then
#   source $HOME/.awscredz
# fi

source ~/.aliases
export HISTCONTROL=ignoreboth:erasedups


