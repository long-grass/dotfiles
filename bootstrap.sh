mv ~/Library/Preferences/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist.bak
ln -s ~/dotfiles/zfiles/iterm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
mv ~/Library/Preferences/com.apple.spaces.plist ~/Library/Preferences/com.apple.spaces.plist.bak
ln -s ~/dotfiles/zfiles/Desktops/com.apple.spaces.plist ~/Library/Preferences/com.apple.spaces.plist

ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zprofile ~/.zprofile
ln -s ~/dotfiles/zfiles ~/zfiles
chsh -s /bin/zsh