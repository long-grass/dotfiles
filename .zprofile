if [ `uname` = 'Darwin' ]
  then
  defaults import com.apple.spaces.plist ~/dotfiles/zfiles/macos/com.apple.spaces.plist
  export PATH=/usr/local/bin:$PATH
else
  export PATH=$PATH:/usr/local/go/bin:$HOME/.rbenv/bin:$HOME/.cargo/bin
  eval "$(rbenv init -)"
fi
