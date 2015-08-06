# History

HISTFILE=$HOME/.histfile
HISTSIZE=1048576
SAVEHIST=$HISTSIZE

# Env variables

export PATH=$HOME/bin:/usr/src/node/bin:/usr/src/git/bin:$PATH
export EDITOR='vim'
export MANPATH=$HOME/share/man:$MANPATH
export KEYTIMEOUT=1

# OS dependent env variables

if [[ $(uname) == 'Darwin' ]]; then
    export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
    export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH
fi

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
