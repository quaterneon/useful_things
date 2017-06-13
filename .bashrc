# Color coding
export PS1="\[\033[36m\]\u\[\033[m\]|\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagacad

# Paths
export PATH="/usr/local/sbin:/Users/agata.kargol/.node/bin:$PATH"

# Aliases
alias svi='sudo -E vim'
alias dir='ls -lhrat'
alias ls='ls -GFh'
alias ccurl='clear;curl'
alias getfiles='cut -d: -f1 | grep -v Binary | sort | uniq '
alias grepnf='grep -R --exclude-dir=frontend_src --exclude-dir=static --exclude-dir=templates'
alias start_postgres='postgres -D /usr/local/var/postgres'

# Auto activate env
function cd {
    builtin cd "$@"
    if [ -d ".env" ] ; then
        source .env/bin/activate;
    fi
}

# Kubectl
source $(brew --prefix)/etc/bash_completion
source <(kubectl completion bash)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/agata.kargol/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/agata.kargol/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/agata.kargol/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/agata.kargol/Downloads/google-cloud-sdk/completion.bash.inc'; fi
