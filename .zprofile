if [ `uname` = 'Darwin' ]
  then
  export PATH=/usr/local/bin/:$PATH
  export VAGRANT_HOME="~/vagrant/vagrant_home"
else
  export PATH=$PATH:/usr/local/go/bin:$HOME/.rbenv/bin:$HOME/.cargo/bin
  eval "$(rbenv init -)"
fi
