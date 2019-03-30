# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="xiong-chiamiov-plus"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
bindkey -v

# Aliases
alias g='git'

j() {
  cd `autojump "$*"`;
}

# autojump
source /etc/profile.d/autojump.zsh

vf() {
  vi `find . -name "$*"`;
}

icons() {
  gsettings set org.nemo.desktop show-desktop-icons "$*";
}

# rbenv
export PATH=$PATH:/home/naveen/.rbenv/bin
eval "$(rbenv init -)"

export PATH=$PATH:/home/naveen/racket/bin

unsetopt CDABLE_VARS
