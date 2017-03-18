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

function box() { t="$1xxxx";c=${2:-=}; echo ${t//?/$c}; echo "$c $1 $c"; echo ${t//?/$c}; }

function lcd { 
    cd "$@" && ls; 
}

function jump { 
    cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}

function jumpls { 
    cd -P "$MARKPATH/$1" && ls 2>/dev/null || echo "No such mark: $1"
}

function mark { 
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark { 
    rm -if "$MARKPATH/$1"
}
function marks {
    ls -l "$MARKPATH" | tail -n +2 | sed 's/  / /g' | cut -d' ' -f9- | awk -F ' -> ' '{printf "%-10s -> %s\n", $1, $2}'
}

function unmarkall {
  for i in `marks  | awk -F" " '{print $2}'`
  do
  unmark $i
  done
}

function _completemarks {
  reply=($(ls $MARKPATH))
}

compctl -K _completemarks jump
compctl -K _completemarks unmark

mcd () {
  mkdir "$1"
  cd "$1"
}

cleanproj (){
  find . -type f -name '*.jpeg' -exec xattr -c {}  \;
  find . -type f -name '*.png' -exec xattr -c {} \;
  find . -type f -name '*.tif' -exec xattr -c {} \;
}

gito () {
  git branch "$1"
  git checkout "$1"
}

gitq () {
  git add .
  git commit -m $1
}

ds () {
  du -s * | sort -n
}

newday () {
  jump today 
  unmark today -y
  cd ~/Workspace/diary
  mkdir  "$1"
  cd  "$1"
  mark "$1" .
  mark today .
}

alias showspace="du -s * | sort -n"
alias html="mv *htm index.html"
alias makespace='find . -name "node_modules" -type d -exec rm -rf '{}' +'

alias branchdate='git for-each-ref --sort=-committerdate refs/heads/ --format="%(authordate:short)%09%(objectname:short)%09%1B[0;33m%(refname:short)%1B[m%09"'

export HISTTIMEFORMAT='%F %T '
alias phx="mix phoenix.server"

alias tryit="ping 8.8.8.8"
alias openlast="subl `ls -tr |tail -1`"
alias gotolast="cd `ls -tr |tail -1`"
alias ionicrun="ionic run ios --device -l -c -s"
alias boom="rake db:drop db:create db:migrate db:seed"
alias blog="open ./_posts/"
alias gpom="git push origin master"
alias github="git push github $1"
alias gitfirst="git init && git add . && git commit -m 'first'"
alias gitc='git commit -m "typo"'
alias start="python -m SimpleHTTPServer 8000 && /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias hist="history | grep"
alias railsbox="jump vag ; cd rails5 ; vagrant ssh"
alias mkdirp="/Users/garethrobertlee/.node/bin/mkdirp"
alias railchrome="rails s & ; /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome 127.0.0.1:3000"
alias gitremote="git remote -v"
alias be="bundle exec"
alias openz="subl ~/.zshrc"
alias sourcez="source ~/.zshrc"
alias rc="bundle exec rails c"
alias hidedesk='defaults write com.apple.finder CreateDesktop -bool false; killall Finder;'
alias showdesk='defaults write com.apple.finder CreateDesktop -bool true; killall Finder;'

alias lock="open /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
 DISABLE_AUTO_UPDATE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

setopt EXTENDED_HISTORY 


if [ -f $HOME/.secrets/keys ]; then
	for i in `cat $HOME/.secrets/keys`
	  do
	  	export $(print $i | awk -F"=" '{print $1}')=$(print $i | awk -F"=" '{print $2}')
	  done
fi 

export EDITOR='subl -w -n'
export PAGER='less -f'

. `brew --prefix`/etc/profile.d/z.sh

export PATH="$PATH:$HOME/.rvm/bin:/Users/garethrobertlee/.vimpkg/bin" # Add RVM to PATH for scripting

export VAGRANT_HOME="/Volumes/s128/vagrant_home"
#export VAGRANT_HOME="/Users/garethrobertlee/vagrant/vagrant_home"

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)


