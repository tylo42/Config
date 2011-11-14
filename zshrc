# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory beep notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tylo42/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export PROMPT="%n@%m%%>"
export RPROMPT="%~%"

export GIT_EDITOR=vim

alias ls='ls --color=always --group-directories-first --width=80 -X'
alias grep='grep --color'

alias gdc='gdc -Wall'
alias g++='g++ -Wall'
