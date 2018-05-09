dotfiles
========

This repository contains all my dotfiles. It is managed by homeshick (https://github.com/andsens/homeshick).

Usage
-----

```
$ git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
$ printf '\nsource "$HOME/.homeshick/repos/homeshick/homeshick.sh"' >> $HOME/.bashrc
$ source $HOME/.bashrc
$ homeshick clone https://github.com/franek/dotfiles
```

Then you can use homeshick : 

```
$ homeshick track dotfiles .bashrc
```
