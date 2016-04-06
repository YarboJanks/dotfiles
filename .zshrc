# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="avit"

# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13

COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git history-substring-search aws docker zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# Preferred editor for local and remote sessions
atom=`which atom`
  test $atom &&
  alias e=atom

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi


# Custom Edits

alias zedit="vim ~/.zshrc"
alias reload="source ~/.zshrc"
alias k="clear"
# sources custom aliases and functions
for file in $(tree -if ~/.dotfiles/custom-omz | grep .zsh); do
  source $file
done
