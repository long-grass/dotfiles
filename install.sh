xcode-select --install
chgrp -R admin /usr/local
chmod -R g+w /usr/local
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap jotta/cli
brew install caskroom/cask/brew-cask tree docker-compose jotta-cli
brew cask install iterm2 vagrant virtualbox docker alfred google-chrome visual-studio-code firefox chrome-devtools
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
