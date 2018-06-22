if [ -d /Volumes/home ]; then
  sudo dscl . -change Users/$(id -F)  NFSHomeDirectory /Users/$(id -F) /Volumes/home
  sudo mv /Users/$(id -F)/dotfiles /Volumes/home/dotfiles
  sudo rm -rf /Users/$(id -F)
  sudo reboot
fi
