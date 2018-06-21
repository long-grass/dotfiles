# Dotfiles
if [ -d /Volumes/home ]; then
  sudo dscl . -change Users/$(id -F)  NFSHomeDirectory /Users/$(id -F) /Volumes/home
fi

if [ ~/dotfiles ]; then
  rm ~/.zshrc
  mkdir ~/dotfiles/zfiles/rfy
  touch ~/.zshrc.local
  ln -s ~/dotfiles/.zshrc ~/.zshrc
  ln -s ~/dotfiles/.zprofile ~/.zprofile
  ln -s ~/dotfiles/zfiles ~/zfiles
  source ~/.zshrc
fi

  source ~/.zshrc
defaults delete com.apple.spaces
defaults delete com.apple.spaces.plist
defaults import com.apple.spaces.plist ~/dotfiles/zfiles/macos/com.apple.spaces.plist

if [ ! -d ~/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/cerico/dotfiles/master/zfiles/oh-my-zsh/scripted-install.sh)"
fi

ln -s ~/dotfiles/zfiles/themes/meadow.zsh-theme ~/.oh-my-zsh/themes/meadow.zsh-theme
ln -s ~/dotfiles/zfiles/themes/cloudier.zsh-theme ~/.oh-my-zsh/themes/cloudier.zsh-theme

if [ `uname` = 'Darwin' ] ; then
  for x in $(cat ~/dotfiles/zfiles/vscode/vscode.list); do code --install-extension $x; done
fi

# Preferences for iterm, spaces, login items and dock
sudo rm -rf /Library/Desktop\ Pictures
if [ ! -f ~/dotfiles/zfiles/wallpaper/sierra.jpg ]; then 
  cp $(ls ~/dotfiles/zfiles/wallpaper/*g | head -1)  ~/dotfiles/zfiles/wallpaper/sierra.jpg 
fi

sudo ln -s  ~/dotfiles/zfiles/wallpaper/ /Library/Desktop\ Pictures

sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db 'DELETE FROM data;'
sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db 'DELETE FROM preferences;'
for i in `ls -d1  ~/dotfiles/zfiles/wallpaper/*g`
  do sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "insert into data(value) values ('$(echo $i)')"
done
killall Dock

defaults delete com.apple.spaces
defaults delete com.apple.spaces.plist
defaults import com.googlecode.iterm2.plist ~/dotfiles/zfiles/macos/com.googlecode.iterm2.plist
defaults import com.apple.loginitems.plist ~/dotfiles/zfiles/macos/com.apple.loginitems.plist
defaults import com.apple.spaces ~/dotfiles/zfiles/macos/com.apple.spaces.plist
defaults import com.apple.spaces.plist ~/dotfiles/zfiles/macos/com.apple.spaces.plist
defaults import com.apple.dock.plist ~/dotfiles/zfiles/macos/com.apple.dock.plist
defaults import com.apple.systempreferences.plist ~/dotfiles/zfiles/macos/com.apple.systempreferences.plist
defaults import com.apple.spaces.plist ~/dotfiles/zfiles/macos/com.apple.spaces.plist
defaults import com.apple.spaces.plist ~/dotfiles/zfiles/macos/com.apple.spaces.plist

if [ -d /Volumes/vagrant ]; then
  mkdir /Volumes/vagrant/VirtualBox\ VMs
  mkdir /Volumes/vagrant/.vagrant.d
  ln -s /Volumes/vagrant/VirtualBox\ VMs /Volumes/home/VirtualBox\ VMs
  ln -s /Volumes/vagrant/.vagrant.d .Volumes/home/.vagrant.d
  git clone https://github.com/cerico/kemerovo.git
  cd kemerovo/larch
  vagrant up
fi
