# nvim > vim
alias vim="nvim"

# Go to dotfiles
alias dotfiles="cd ~/dotfiles"

# big funny
alias yolo="git push origin master --force"

# what even is xdg? 
alias open="xdg-open"

# Git push upstream
alias gpo="git push --set-upstream origin $(git branch | awk '/^\* / { print $2 System}')"

# Git push
alias gp="git push"

# Git status
alias gs="git status"
