# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"

export HISTSIZE=71000
# number of lines saved in the history after logout
export SAVEHIST=71000
# location of history
export HISTFILE=~/.zsh_history
# append command to history file once executed
setopt inc_append_history

export MARKPATH=$HOME/.marks
export HISTTIMEFORMAT='%F %T '

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
 DISABLE_AUTO_UPDATE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

setopt EXTENDED_HISTORY 


source ~/zfiles/aliases
source ~/zfiles/functions


if [ -f $HOME/.secrets/keys ]; then
	source $HOME/.secrets/keys
fi 

export EDITOR='subl -w -n'
export PAGER='less -f'

. `brew --prefix`/etc/profile.d/z.sh

export PATH="$PATH:$HOME/.rvm/bin:/Users/garethrobertlee/.vimpkg/bin" # Add RVM to PATH for scripting

export VAGRANT_HOME="/Volumes/s128/vagrant_home"
#export VAGRANT_HOME="/Users/garethrobertlee/vagrant/vagrant_home"

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

bindkey "^U" backward-kill-line

bindkey "^X\\x7f" backward-kill-line

bindkey "^X^_" redo
