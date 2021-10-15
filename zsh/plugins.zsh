if [[ ! -d $PLUGINS ]]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions.git $PLUGINS/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $PLUGINS/zsh-syntax-highlighting
  git clone https://github.com/romkatv/powerlevel10k.git $PLUGINS/powerlevel10k
fi

source_plugin() {
  [[ -d $PLUGINS/$1 ]] && source $PLUGINS/$1/$1.plugin.zsh
}

# These plugins have the same name schema
source_plugin zsh-autosuggestions
source_plugin zsh-syntax-highlighting

# These plugins need custom source
[[ -d $PLUGINS/$1 ]] && source $ZSH/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
