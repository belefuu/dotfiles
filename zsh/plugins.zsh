# Antigen stuff

source ~/.dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle sigurdga/ls-colors-solarized
antigen bundle extract
antigen bundle git-extras
antigen bundle rupa/z

antigen theme candy

antigen apply

# dircolors
if [[ "$(tput colors)" == "256" ]]; then
    eval `dircolors ~/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-sigurdga-SLASH-ls-colors-solarized.git/dircolors`
fi
