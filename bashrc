[[ $- != *i* ]] && return
alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -lh --color=auto'

export PATH=/home/jolyna/bin:/usr/src/node/bin:/usr/src/git/bin:$PATH
export EDITOR='vim'

eval "$(grunt --completion=bash)"

PS1='[\u@\h \W]\$ '

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
