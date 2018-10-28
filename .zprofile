export PATH=$HOME/.rbenv/shims:$HOME/.rbenv/bin:/usr/local/bin:$PATH
eval "$(rbenv init -)"

if [ `uname` = 'Darwin' ]
  then
  defaults import com.apple.spaces.plist ~/dotfiles/zfiles/macos/com.apple.spaces.plist
else
  export PATH=$PATH:/usr/local/go/bin:$HOME/.rbenv/bin:$HOME/.cargo/bin
  eval "$(rbenv init -)"
fi
