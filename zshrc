# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jolyna/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export PATH=/home/jolyna/bin:/usr/src/node/bin:/usr/src/git/bin:$PATH
export EDITOR='vim'

source ~/.dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle sigurdga/ls-colors-solarized
antigen bundle extract
antigen bundle git-extras
antigen bundle rupa/z

antigen theme candy

antigen apply

# Aliases
source ~/.zsh/aliases.zsh

# Plugins
source ~/.zsh/plugins.zsh

# Keybindings

bindkey -v

bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line

# Add vi [NORMAL] mode indicator to right prompt

function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1

