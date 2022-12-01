
# =========== ALIASES =========== #

# nvim > vim
alias vim="nvim"

# Go to dotfiles
alias dotfiles="cd ~/dotfiles"

# What even is xdg?
alias open="xdg-open"

# Compile and run C file
runc() {
  gcc -Wall $1.c -o $1.out
  ./$1.out ${@: 2}
}

# =========== GIT =========== #

# Git push upstream [currently not working as intended]
# alias gpo="git push --set-upstream origin $(git branch | awk '/^\* / { print $2 System}')"

# Git commit amend
alias gca="git commit --amend --no-edit"

# Git push
alias gp="git push"

# Git pull
alias gpp="git pull"

# Git force push
alias gpf="git push -f"

# Git status
alias gs="git status"

# Git log
alias gl="git log"

# Git diff
alias gd="git diff"

# Git add all
alias ga="git add ."

# Git checkout
alias gc="git checkout"

# Git checkout master
alias gcm="git checkout master"

# Git checkout new branch
alias gcn="git checkout -b"


# =========== DOCKER =========== #

# Docker-compose
alias dc="docker-compose up"

# Docker-compose detached
alias dcd="docker-compose up -d"

# Docker ps
#alias ps="docker ps --format 'table {{.ID}}\\t{{.Names}}\t{{.Status}}'"

# Kill all running containers
alias dkill="docker container kill $(docker ps -q)"

# =========== RANDOM =========== #

# Why is this not a default feature ...
alias 2..="../.."
alias 3..="$2../.."
alias 4..="$3../.."

# big funny
alias yolo="git push origin master --force"
