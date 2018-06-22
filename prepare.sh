xecutable File  21 lines (15 sloc)  879 Bytes
if [ -d /Volumes/home ]; then
  sudo dscl . -change Users/$(id -F)  NFSHomeDirectory /Users/$(id -F) /Volumes/home
  sudo mv /Users/$(id -F)/dotfiles /Volume/home/dotfiles
  sudo rm -rf /Users/$(id -F)
  sudo reboot
fi