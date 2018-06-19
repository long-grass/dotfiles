ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap jotta/cli
brew install caskroom/cask/brew-cask tree docker-compose slack jotta-cli
brew cask install iterm2 vagrant docker alfred google-chrome postgresql visual-studio-code firefox chrome-devtools
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
export PATH="$HOME/.rbenv/bin:$PATH" && rbenv install 2.4.3
rbenv global 2.4.3
echo "gem: --no-document" > ~/.gemrc
~/.rbenv/shims/gem install bundler
~/.rbenv/shims/gem install rails
