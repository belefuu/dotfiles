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

antigen bundle git

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme robbyrussell

antigen apply
