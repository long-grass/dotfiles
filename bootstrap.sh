# Dotfiles
rm ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zprofile ~/.zprofile
ln -s ~/dotfiles/zfiles ~/zfiles

if [ ! -d ~/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/cerico/dotfiles/master/zfiles/oh-my-zsh/scripted-install.sh)"
fi

if [ `uname` = 'Darwin' ] ; then
  for x in $(cat ~/dotfiles/zfiles/vscode/vscode.list); do code --install-extension $x; done
fi

# Preferences for iterm, spaces, login items and dock

cp -a ~/dotfiles/zfiles/wallpaper/Dock ~/Library/Application\ Support/

defaults delete com.apple.spaces
defaults delete com.apple.spaces.plist
defaults import com.googlecode.iterm2.plist ~/dotfiles/zfiles/macos/com.googlecode.iterm2.plist
defaults import com.apple.loginitems.plist ~/dotfiles/zfiles/macos/com.apple.loginitems.plist
defaults import com.apple.spaces ~/dotfiles/zfiles/macos/com.apple.spaces.plist
defaults import com.apple.spaces.plist ~/dotfiles/zfiles/macos/com.apple.spaces.plist
defaults import com.apple.dock.plist ~/dotfiles/zfiles/macos/com.apple.dock.plist
defaults import com.apple.systempreferences.plist ~/dotfiles/zfiles/macos/com.apple.systempreferences.plist
