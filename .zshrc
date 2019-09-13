echo "" > /var/mail/duraki

# Initials
ZSH_THEME="dida"
plugins=(git sublime)

export ZSH="/Users/duraki/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

#export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

if [ -f ~/.config/aliases ]; then
    source ~/.config/aliases
fi

if [ -f ~/.config/env ]; then
    source ~/.config/env
fi

export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"

# custom scripts
export PATH="~/.config/util:$PATH"

fpath=(/usr/local/share/zsh-completions $fpath)
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/opt/openssl/lib/pkgconfig
#export PATH="/usr/local/opt/ruby/bin:$PATH"
#export PATH="/usr/local/lib/ruby/gems/2.6.0/bin$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH=$PATH:/opt/local/bin

export PATH=/opt/local/bin/:/opt/local/sbin/:$PATH

alias aclocal=/opt/local/bin/aclocal-17
