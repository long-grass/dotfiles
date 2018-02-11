# dotfiles

These are my dotfiles, for use across OSX, and Linux instances in vagrant and in cloud.

![screenshot](https://cooper.nyc3.digitaloceanspaces.com/screenshots/layout.jpeg)


# To download

```
cd
git clone https://github.com/cerico/dotfiles.git
cd dotfiles
```

To install packages and then link dotfiles

```
./install.sh
./bootstrap.sh
```

To just link, without installing

```
./bootstrap.sh
```

(note, this will install oh-my-zsh if it isn't present, but it won't clobber the dotfiles .zshrc) 

# What it won't do

It won't do the backgrounds for iterm or spaces, unless, you create a /Volumes/workspace/wallpaper partition, as an absolute path is needed, will look at ways arond this later

It won't partition your disk up for you, I put my home drive, docker, vagrant and work all in separate partitions rather than the standard one big partition approach

