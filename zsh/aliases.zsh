
# =========== ALIASES =========== #

# nvim > vim
alias vim="nvim"

# Python version
alias python="python3"

# Go to dotfiles
alias dotfiles="cd ~/dotfiles"

# What even is xdg?
alias open="xdg-open"


# =========== GIT =========== #

# Git push upstream
alias gpo="git push --set-upstream origin $(git branch | awk '/^\* / { print $2 System}')"

# Git push
alias gp="git push"

# Git status
alias gs="git status"

# Git log
alias gl="git log"

# Git diff
alias gd="git diff"

# Git add all
alias ga="git add ."

# Git checkout master
alias gcm="git checkout master"

# Git checkout new branch
alias gcn"git checkout -b"


# =========== DOCKER =========== #

# Docker-compose
alias dc="docker-compose up"

# Docker-compose detach
alias dcd="docker-compose up -d"

# Docker ps
alias ps="docker ps --format 'table {{.ID}}\\t{{.Names}}\t{{.Status}}'"

# Kill all running containers
alias d-kill="docker container kill $(docker ps -q)"

# =========== RANDOM =========== #

# Why is this not a default feature ...
alias 2..="../.."
alias 3..="../../.."

# big funny
alias yolo="git push origin master --force"
