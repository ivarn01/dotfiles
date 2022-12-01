# Enable Powerlevel10k instant prompt. 
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# eval $(thefuck --alias)

# Path to dotfiles
export DOTFILES=$HOME/dotfiles

# Path to zsh folder
export ROOT=$DOTFILES/zsh

# Path to zsh plugins. Because of the folder's size, it's not tracked, but rather made on installation
export PLUGINS=$ROOT/plugins

# Path to your oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# Password store
export PASSWORD_STORE_DIR="/home/ivar/Documents/webkom/password-store"

# For some school related stuff
export PATH="$PATH:$HOME/Documents/skole/H21/gcc-arm-none-eabi-10.3-2021.07/bin"

# Setting the theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# History settings
HISTFILE=$HOME/.zsh_history
HISTSIZE=90000
SAVEHIST=$HISTSIZE
setopt HIST_IGNORE_ALL_DUPS # Remove older duplicate entries from history
setopt SHARE_HISTORY # Remove superfluous blanks from history items
setopt auto_cd # Activate auto cd

zstyle ':completion:*' menu select # Activate highlight on completion

# Load source files
for zsh_file ($ROOT/*.zsh) source $zsh_file
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
