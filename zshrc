# Initialize completion
autoload -Uz compinit && compinit

# Env variables

export PATH=$HOME/bin:/usr/src/node/bin:/usr/src/git/bin:$PATH
export EDITOR='vim'
export MANPATH=$HOME/share/man:$MANPATH
export KEYTIMEOUT=1
export FZF_DEFAULT_COMMAND='ag -l -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export GOPROXY=http://goproxy.sas.com:3000
export GONOSUMDB=*.sas.com

# OS dependent env variables

if [[ $(uname) == 'Darwin' ]]; then
    export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
    export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH
    export PATH=/usr/local/opt/gnu-tar/libexec/gnubin:$PATH
    export PATH=/usr/local/opt/gnu-sed/libexec/gnubin:$PATH
    export MANPATH=/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_66.jdk/Contents/Home
fi

# Plugins
source ~/.zsh/plugins.zsh

# Settings
source ~/.zsh/settings.zsh

# Aliases
source ~/.zsh/aliases.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# syntax highlighting, needs to be last
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
