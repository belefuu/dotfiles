# History

HISTFILE=$HOME/.histfile
HISTSIZE=1048576
SAVEHIST=$HISTSIZE

# zstyle
zstyle :prompt:pure:git:stash show yes

# Keybindings

bindkey -v

bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line
bindkey '^[[3~' delete-char

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
bindkey "^[OA" up-line-or-beginning-search # Up
bindkey "^[OB" down-line-or-beginning-search # Down
