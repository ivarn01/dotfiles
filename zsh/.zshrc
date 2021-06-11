# Enable Powerlevel10k instant prompt. 
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

eval $(thefuck --alias)

# Path to dotfiles
export DOTFILES=$HOME/dotfiles

# Path to zsh folder
export ROOT=$DOTFILES/zsh

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Path to zsh plugins
export PLUGINS=$ROOT/plugins

# Password store
export PASSWORD_STORE_DIR="/home/ivar/Documents/webkom/password-store"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
