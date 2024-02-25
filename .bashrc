#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

source /usr/share/bash-completion/bash_completion
source /usr/share/git/completion/git-prompt.sh

RESET="\[$(tput sgr0)\]"
DEFAULT_FG=$'\[\e[38;2;220;220;220m\]'
USER_FG=$'\[\e[38;2;200;100;100m\]'
USER_BG=$'\[\e[48;2;200;100;100m\]'
HOST_BG=$'\[\e[48;2;100;200;100m\]'
CWD_BG=$'\[\e[48;2;100;100;200m\]'
USER_NAME=$'\u'
HOST_NAME=$'\h'
CWD=$'\w'
GIT_STATUS='$(__git_ps1 " (%s)")'
PROMPT=$'\$'
PS1="${DEFAULT_FG}${CWD}$RESET$GIT_STATUS ${PROMPT} "
. "$HOME/.cargo/env"
