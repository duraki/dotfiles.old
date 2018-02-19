# Init config
ZSH_THEME="gitster"
plugins=(git)
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR=nvim

# https://developers.redhat.com/blog/2014/03/19/permanently-enable-a-software-collectionk
source ~/.config/php7.sh

if [ -f ~/.config/aliases ]; then
    source ~/.config/aliases
fi

# Functions
function dx {
    docker exec -it dockerdeployergit_$1_1 bash
} 

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
# RHEL requires pkg-config hardcode for libquery 
export PKG_PROG_PKG_CONFIG=/usr/bin/pkg-config

export PATH=/home/devil/.local/bin/luna-studio:$PATH
