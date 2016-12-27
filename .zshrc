ZSH=$HOME/.zsh
ZSH_CUSTOM=$HOME/.dotfiles/zsh-files

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/n/bin"
export EDITOR="$(which nvim)"

plugins=(
  vi-mode
  clipboard
  docker-zsh-completion
  gpg
  zsh-autopair
  fuck
  fzf
  todo
  #must be last
  history-substring-search
  zsh-syntax-highlighting
)

source <(cat $ZSH_CUSTOM/functions/**/*.zsh)     # Sources custom functions and aliases
source $ZSH_CUSTOM/sourcer.zsh                   # Sets up up fpaths and plugins
source $ZSH_CUSTOM/themes/audibleblink.zsh       # Sets theme

alias e=$EDITOR
alias zedit="e ~/.zshrc"
alias vedit="e ~/.config/nvim/init.vim"
alias tedit="e ~/.tmux.conf"
alias bedit="e ~/.config/nvim/plugins.vim"
alias aedit="e ~/.dotfiles/zsh-files/functions"
alias iedit="e ~/.config/i3/config"
alias reload="source ~/.zshrc"

# Temp aliases
alias kedit="cd $HOME/Code/keyboards/atreus-firmware/atreus/; e keymap_alex.c"
alias pressh="gpg-connect-agent updatestartuptty /bye"

# necessary when using Termite
[ "$TERM" = "xterm-termite" ] && alias ssh="pressh && TERM=screen-256color ssh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
