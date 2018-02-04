mkdir ~/orig

mv ~/Library/Application\ Support/Dock ~/orig
cp -a ~/dotfiles/zfiles/Dock ~/Library/Application\ Support/

# Iterm Preferences
mv ~/Library/Preferences/com.googlecode.iterm2.plist ~/orig
ln -s ~/dotfiles/zfiles/iterm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

# Login
mv ~/Library/Preferences/com.apple.loginitems.plist ~/orig
ln -s ~/dotfiles/zfiles/LoginItems/com.apple.loginitems.plist ~/Library/Preferences/com.apple.loginitems.plist

# Spaces Preferences
mv ~/Library/Preferences/com.apple.spaces.plist ~/orig
ln -s ~/dotfiles/zfiles/Desktops/com.apple.spaces.plist ~/Library/Preferences/com.apple.spaces.plist

# Alfred Preferences
mv ~/Library/Preferences/com.apple.systempreferences.plist ~/orig
ln -s ~/dotfiles/zfiles/Alfred/com.apple.systempreferences.plist ~/Library/Preferences/com.apple.systempreferences.plist

# Main zsh/oh-my-zsh configuration. It installs from a modifies oh-my-zsh script, the only difference being it doesn't wipe out the exiting .zshrc as we want to keep our dotfiles .zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zprofile ~/.zprofile
ln -s ~/dotfiles/zfiles ~/zfiles
sh -c "$(curl -fsSL https://raw.githubusercontent.com/cerico/dotfiles/master/zfiles/oh-my-zsh/scripted-install.sh)"
