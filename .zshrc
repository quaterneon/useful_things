# Base prompt
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{36}%3~%f%b %# '

# Git info on right
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

export EDITOR="vim"
export BROWSER="chrome"

# Paths
export PATH="$PATH:/Users/agata/bin"

# Aliases
alias svi='sudo -E vim'
alias dir='ls -lhrat'
alias ls='ls -GFh'
alias grepnf='grep -R --exclude-dir=frontend_src --exclude-dir=static --exclude-dir=templates'

# Git
export GIT_EDITOR=vim

# GO
export GOPATH=/Users/agata/go
export PATH=$PATH:$GOPATH/bin

# Moar style things
zstyle ':completion:*:*:make:*' tag-order 'targets'
autoload -U compinit && compinit
