#
# ~/.bashrc
#
set -o ignoreeof
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## bash settings
HISTCONTROL=ignoreboth

# Avoid depulicates
# HISTCONTROL=ignoredups:erasedups

## MANPAGER
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# When shell exist, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
# PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
shopt -s checkwinsize

HISTSIZE=4096
HISTFILESIZE=4096

export HISTFILE="$HOME/.bh/` date '+%y%m%d-%H%M%S'.bh`"


## set bash_alias file:
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

## my bash prompt
PS1='\A [\u@\h \W]\$ '

## autorun in shell
# date && bat --file-name TODO /home/nerd/todo.list;
date

export PATH=$PATH:/home/nerd/.local/bin

## privoxy is needed and be configured 

# export http_proxy="http://127.0.0.1:8118" && echo "Enabled"
# export https_proxy="https://127.0.0.1:8118" && echo "Enabled"

