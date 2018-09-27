if [ -d /Volumes/home ]; then
  mkdir /Volumes/home/$(id -F)
  sudo dscl . -change Users/$(id -F)  NFSHomeDirectory /Users/$(id -F) /Volumes/home/$(id -F)
  sudo mv /Users/$(id -F)/dotfiles /Volumes/home/$(id -F)/dotfiles
  sudo rm -rf /Users/$(id -F)
  sudo reboot
fi
