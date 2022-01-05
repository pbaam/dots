#!/bin/sh

PATH="$HOME/bin:$PATH"

source $HOME/.bashrc

if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
fi

eval "$(pandoc --bash-completion)"

alias ls='ls --color=auto'
alias ll='ls -la'

PS1="[ \[\e[31;1m\h\e[0m\] \[\e[36;3m\W\e[0m\] ] "
