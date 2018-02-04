mkdir ~/orig
mv ~/Library/Preferences/com.googlecode.iterm2.plist ~/orig
ln -s ~/dotfiles/zfiles/iterm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
mv ~/Library/Preferences/com.apple.spaces.plist ~/orig
ln -s ~/dotfiles/zfiles/Desktops/com.apple.spaces.plist ~/Library/Preferences/com.apple.spaces.plist
ln -s ~/dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zprofile ~/.zprofile
ln -s ~/dotfiles/zfiles ~/zfiles
source ~/.zshrc
