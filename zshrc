# Initialize completion
autoload -Uz compinit && compinit

# Settings
source ~/.zsh/settings.zsh

# Aliases
source ~/.zsh/aliases.zsh

# Plugins
source ~/.zsh/plugins.zsh

# Add vi [NORMAL] mode indicator to right prompt

function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
