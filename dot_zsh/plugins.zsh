# Antidote stuff
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
antidote load

# dircolors
if [[ "$(tput colors)" == "256" ]]; then
    eval `dircolors $(antidote home)/https-COLON--SLASH--SLASH-github.com-SLASH-sigurdga-SLASH-ls-colors-solarized/dircolors`
fi

# Base16 Shell
# BASE16_SHELL="$HOME/.config/base16-shell/"
# [ -n "$PS1" ] && \
#     [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
#         eval "$("$BASE16_SHELL/profile_helper.sh")"
