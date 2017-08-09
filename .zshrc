# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

source $ZSH/oh-my-zsh.sh

setopt EXTENDED_HISTORY 

source ~/zfiles/aliases
source ~/zfiles/functions

ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"

export HISTFILE=~/.zsh_history

setopt inc_append_history

export MARKPATH=$HOME/.marks
export HISTTIMEFORMAT='%F %T '

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
 DISABLE_AUTO_UPDATE="true"

plugins=(git)

if [ -f $HOME/.secrets/keys ]; then
	source $HOME/.secrets/keys
fi 

export EDITOR='code'
export PAGER='less -f'

. `brew --prefix`/etc/profile.d/z.sh

export PATH=/usr/local/bin/:$PATH

export VAGRANT_HOME="~/vagrant/vagrant_home"

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

bindkey "^U" backward-kill-line

bindkey "^X\\x7f" backward-kill-line

bindkey "^X^_" redo
