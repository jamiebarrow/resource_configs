# Configure Neovim to be my default editor
export EDITOR=nvim

# Common command aliases
alias ..='cd ..'
alias cls='clear'
alias dir='ls -l'
alias l='ls -al --color'
alias la='ls -lAthr --color'
alias refreshenv='source ~/.bashrc'
alias today='date --rfc-3339=date'
alias refreshenv='source ~/.bashrc'

# sed aliases
alias escslash='sed -e "s/\\\/\//g"'
alias escspace='sed -e "s/ /\\\ /g"'
alias escdrive='sed -e "s/\([A-Z]\):[\\\\/]/\/\\1\//g"'
alias esc='escdrive | escslash | escspace'

# fzf aliases
alias f='fzf -e -f'

# Git aliases
alias gbd='git branch --merged origin/master | grep -v master | xargs -r -n 1 git branch -D'
alias gcam='git commit -a -m'
alias gcreset='git commit --no-edit --amend --reset-author'
alias gcresetroot="git rebase --root --exec 'git commit --no-edit --amend --reset-author'"
alias gf='git fetch --prune'
alias gitauthors='git shortlog --summary --numbered --email'
alias gl='git log --name-status --abbrev-commit'
alias glf='git log --pretty=fuller'
alias gls='git log --name-only'
alias gpr='git pull --rebase'
alias grbi='git rebase -i'
alias grbiroot='git rebase -i --root'
alias grh='git reset --hard'
alias gs='git status'
alias gss='git status -- . ":!node_modules"'
alias gtl='git tag --list -n1'
alias times='git reflog --date=iso'

# GitHub CLI aliases
alias ghrepos='gh repo list --source --json name,visibility,repositoryTopics | jq ".[] | [.name, (.visibility|ascii_downcase), ((((.repositoryTopics // []) | [.[].name] ) | sort) .[])] | @tsv" | sed -e "s/\"//g" | sed -e "s/\\\\t\(\w\+\)/ #\1/g" | sort'
alias ghclone='gh repo clone'

# Kubernetes command aliases
alias k='kubectl'
alias kgp='kubectl get pods'

# WinMerge aliases
alias dt='~/winmerge.sh'

# Completions - Kubectl
source <(kubectl completion bash)

# Completions - zoxide
eval "$(zoxide init bash)"
