# History

HISTFILE=~/.histfile
HISTSIZE=1048576
SAVEHIST=$HISTSIZE

# Env variables

export PATH=/home/jolyna/bin:/usr/src/node/bin:/usr/src/git/bin:$PATH
export EDITOR='vim'
export MANPATH=~/share/man:$MANPATH
export KEYTIMEOUT=1

# Keybindings

bindkey -v

bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

