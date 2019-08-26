#
# ~/.bashrc
#

# If not running interactively, do not do anything
[[ $- != *i* ]] && return

# Start powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

# Dont really know what this does but its part of the skeleton file
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
