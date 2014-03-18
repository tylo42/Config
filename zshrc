# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tylo42/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
bindkey ';6D' emacs-backward-word
bindkey ';6C' emacs-forward-word

setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats '%F{red}(%b|%a)%f'
zstyle ':vcs_info:*' formats '%F{red}(%b)%f'
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

zstyle ':vcs_info:*' enable git

function precmd() {
   vcs_info
	PS1="%{%F{green}%}%n@%m%{%f%}:%{%F{blue}%}%~%{%f%}"
   if [[ -n ${vcs_info_msg_0_} ]]; then
      PS1="$PS1${vcs_info_msg_0_}"
   fi
	PS1="$PS1\$ "
	RPROMPT="%{%F{yellow}%}$(date)%{%f%}"
}

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias gdc='gdc -Wall'
alias g++='g++ -Wall'

export PATH=$HOME/bin:/opt/play-2.2.2:$PATH
export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64/
