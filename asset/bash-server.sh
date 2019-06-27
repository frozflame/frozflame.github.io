#!/usr/bin/env bash

export PS1="\n${debian_chroot:+($debian_chroot)}\u@\H \e[33m\w\e[0m \$ "
export EDITOR="vim"

alias ls="/bin/ls --group-directories-first -F"
alias sl="ls"
alias la="/bin/ls --group-directories-first -AF"
alias ll="/bin/ls --group-directories-first -lF"
alias lh="/bin/ls --group-directories-first -lFh"

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
