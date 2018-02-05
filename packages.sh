xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap jotta/cli
brew install caskroom/cask/brew-cask tree docker-compose jotta-cli
brew cask install vagrant virtualbox docker alfred google-chrome visual-studio-code firefox chrome-devtools

