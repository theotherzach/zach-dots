# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
EDITOR="vim"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
 # DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rvm bundler brew gem zsh-syntax-highlighting nyan)

# aliases and such
# make a new note
n() {   vim ~/notes/"$*".txt }  
# search notes
nls() {     ls -c ~/notes/ | grep "$*" } 
# cd to ~/Code
c() { cd ~/Code/$1; }
# cd to home
h() { cd ~/; }

alias knife='nocorrect knife'
alias git='nocorrect git'
alias rake='noglob rake'
alias bundle='noglob bundle'
alias tmux="tmux -2"
alias wemux="wemux -2"

# My router's IP address
ip()  { curl "http://www.networksecuritytoolkit.org/nst/cgi-bin/ip.cgi" }
source $ZSH/oh-my-zsh.sh

# Customize to your needs...

PATH=/usr/local/bin:$PATH:$HOME/bin
export HADOOP_HOME="/usr/local/Cellar/hadoop/1.1.1/libexec"
# [[ screen-256color = screen ]] && rvm use default

# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
