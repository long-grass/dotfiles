cp -a ~/dotfiles/zfiles/wallpaper/Dock ~/Library/Application\ Support/

defaults read com.googlecode.iterm2.plist ~/dotfiles/zfiles/macos/com.googlecode.iterm2.plist
defaults read com.apple.loginitems.plist ~/dotfiles/zfiles/macos/com.apple.loginitems.plist
defaults read com.apple.spaces.plist ~/dotfiles/zfiles/macos/com.apple.spaces.plist
defaults read com.apple.dock.plist ~/dotfiles/zfiles/macos/com.apple.dock.plist
defaults read com.apple.systempreferences.plist ~/dotfiles/zfiles/macos/com.apple.systempreferences.plist

# Main zsh/oh-my-zsh configuration. It installs from a modifies oh-my-zsh script, the only difference being it doesn't wipe out the exiting .zshrc as we want to keep our dotfiles .zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zprofile ~/.zprofile
ln -s ~/dotfiles/zfiles ~/zfiles
sh -c "$(curl -fsSL https://raw.githubusercontent.com/cerico/dotfiles/master/zfiles/oh-my-zsh/scripted-install.sh)"
