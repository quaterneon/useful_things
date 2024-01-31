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

# Aliases
alias svi='sudo -E vim'
alias dir='ls -lhrat'
alias ls='ls -GFh'

# Git
export GIT_EDITOR=vim

# GO
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
eval "$(goenv init -)"

switchgo () {
  # goenv/Golang setup
  export GOENV_ROOT="$HOME/.goenv"
  export PATH="$GOENV_ROOT/bin:$PATH"
  eval "$(goenv init -)"
  goenv shell $1
  export GOPATH=$(go env GOPATH)
  export GOROOT=$(go env GOROOT)
  export GOBIN=$(go env GOBIN)
  export PATH="$GOROOT/bin:$PATH"
}

# zsh
zstyle ':completion:*:*:make:*' tag-order 'targets'
autoload -U compinit && compinit

# python versioning goo
eval "$(pyenv init -)"
alias enable_pyenv='export PATH=$(pyenv root)/shims:$PATH'
enable_pyenv
alias clear_poetry='poetry cache:clear --all pypi'

# Gcloud
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# Time utils
alias timez='for TZ in US/{Pacific,Mountain,Central,Eastern} Europe/Berlin UTC;do echo "${TZ},$(TZ=${TZ} date)";done | column -s ',' -t'

# zoxide
eval "$(zoxide init zsh)"
