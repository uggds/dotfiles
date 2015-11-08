# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mh"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby bundler rails )

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/Users/uga/.rvm/bin

# 2014/03/15 by UGA
#export PATH=$PATH:/Users/uga/.rbenv/shims:/usr/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:/Users/uga/.pythonbrew/bin:/Users/uga/.rbenv/shims:/Users/uga/.rbenv/shims:/Users/uga/.rbenv/shims:/opt/local/bin:/opt/local/sbin:/Users/uga/.rbenv/shims:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/local/oracle:/usr/local/oracle

# 2014/03/15 by UGA
#export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:/Users/uga/.pythonbrew/bin:/usr/local/git/bin:/usr/local/oracle

# 2014/03/15 by UGA
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/local/oracle

export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"

bindkey -v
bindkey "^P" up-line-or-history
bindkey "^N" down-line-or-history

alias vim='/usr/local/Cellar/vim/7.4.161/bin/vim'
alias vi='vim'

_Z_CMD=j
source "$HOME/.zsh.d/z/z.sh"

fpath=(~/.zsh/completion $fpath)

autoload -U compinit
compinit -u

# Python Path Setting 2014/11/23 by UGA
export PATH="/Users/uga/.pythonbrew/bin:$PATH"

# MySQL Path Setting 2013/12/2 by UGA
export PATH="/usr/local/Cellar/mysql/5.6.14/bin:$PATH"

alias mysql2='mysql'                           

# Java Path Setting 2013/11/23 by UGA
JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home'
export JAVA_HOME

export PATH="$JAVA_HOME/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Added by UGA for ionic install
export PATH="/usr/local/Cellar/node/0.10.24/bin:$PATH"

### Added by UGA for karma
export PATH="/usr/local/lib/node_modules/karma/bin:$PATH"

### Added by UGA for yo
export PATH="/usr/local/lib/node_modules/yo/bin:$PATH"

### Added by UGA for leiningen
export PATH="/usr/local/leiningen:$PATH"

### Added by UGA for gfortran,gcc
export PATH="/usr/local/Cellar/gcc/4.9.2/bin:$PATH"

### Added by UGA for MongoDB
alias mongostart="mongod --config /usr/local/etc/mongod.conf"

### Added by UGA for node_modules
export NODE_PATH=/usr/local/lib/node_modules

### Added by UGA for postgres
export PGDATA=/usr/local/var/postgres
alias posgrestart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias posgrestop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

export PATH="/usr/local/Cellar/h2/1.4.186/bin:$PATH"

### Added by UGA for ELK
export PATH="/Users/uga/kibana-4.1.0/bin:$PATH"
export PATH="/Users/uga/elasticsearch-1.6.0/bin:$PATH"
export PATH="/Users/uga/logstash-1.5.1/bin:$PATH"

export PATH="/Users/uga/Documents/stream2es:$PATH"
export PATH="$HOME/.embulk/bin:$PATH"

export PATH="/usr/local/datomic/0.9.5201/bin:$PATH"

export PATH="/Users/uga/back-channeling/bin:$PATH"
