mkdir ~/orig
defaults delete com.googlecode.iterm2.plist
defaults delete com.apple.spaces.plist
mv ~/Library/Preferences/com.googlecode.iterm2.plist ~/orig
ln -s ~/dotfiles/zfiles/iterm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
defaults read com.googlecode.iterm2.plist
mv ~/Library/Preferences/com.apple.spaces.plist ~/orig
ln -s ~/dotfiles/zfiles/Desktops/com.apple.spaces.plist ~/Library/Preferences/com.apple.spaces.plist
defaults read com.apple.spaces.plist
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mv  ~/.zshrc  ~/orig
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zprofile ~/.zprofile
ln -s ~/dotfiles/zfiles ~/zfiles
chsh -s /bin/zsh
