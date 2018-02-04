mkdir ~/orig

# Iterm Preferences
mv ~/Library/Preferences/com.googlecode.iterm2.plist ~/orig
ln -s ~/dotfiles/zfiles/iterm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

# Spaces Preferences
mv ~/Library/Preferences/com.apple.spaces.plist ~/orig
ln -s ~/dotfiles/zfiles/Desktops/com.apple.spaces.plist ~/Library/Preferences/com.apple.spaces.plist

# Main zsh/oh-my-zsh configuration. It installs from a modifies oh-my-zsh script, the only difference being it doesn't wipe out the exiting .zshrc as we want to keep our dotfiles .zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zprofile ~/.zprofile
ln -s ~/dotfiles/zfiles ~/zfiles
sh -c "$(curl -fsSL https://raw.githubusercontent.com/cerico/dotfiles/master/zfiles/oh-my-zsh/scripted-install.sh)"
