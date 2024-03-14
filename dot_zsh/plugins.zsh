# Antigen stuff

source ~/.dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle sigurdga/ls-colors-solarized
antigen bundle extract
antigen bundle git-extras
antigen bundle rupa/z
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

antigen apply

# dircolors
if [[ "$(tput colors)" == "256" ]]; then
    eval `dircolors /Users/jolyna/.antigen/bundles/sigurdga/ls-colors-solarized/dircolors`
fi

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
