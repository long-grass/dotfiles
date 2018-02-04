mkdir ~/orig

mv ~/Library/Preferences/* ~/orig
mv ~/Library/Application\ Support/Dock/desktoppicture.db ~/orig
cp -r ~/dotfiles/zfiles/Preferences/* ~/Library/Preferences/*
cp -r ~/dotfiles/zfiles/desktoppicture.db ~/Library/Application\ Support/Dock/desktoppicture.db

# Main zsh/oh-my-zsh configuration. It installs from a modifies oh-my-zsh script, the only difference being it doesn't wipe out the exiting .zshrc as we want to keep our dotfiles .zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zprofile ~/.zprofile
ln -s ~/dotfiles/zfiles ~/zfiles
sh -c "$(curl -fsSL https://raw.githubusercontent.com/cerico/dotfiles/master/zfiles/oh-my-zsh/scripted-install.sh)"
