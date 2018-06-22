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
./prepare.sh
./install.sh
./bootstrap.sh
```

To just link, without installing

```
./bootstrap.sh
```

# What it won't do

It won't partition your disk up for you, I put my home drive, docker, vagrant and work all in separate partitions rather than the standard one big partition approach

