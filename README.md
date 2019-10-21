# .dotfiles

**My desktop, terminal and shell configuration files.**

## Emacs

I used to use Vim, now I use Emacs. The switch was mostly motivated by org mode and the included Python and C modes. To help with the switch I still have evil bindings everywhere possible but will probably try and switch back to vanilla emacs bindings... eventually... My config is overall well documented and should be self explanatory.

Loading this configuration should be as easy as starting emacs as all packages are configured to self-install.

## i3

I use i3 as my window manager. I have configured it to set the background using pywal and use the resulting colours from .Xresources. In addition I have changed all the bindings to be more vim-like.

This configuration relies on the following packages being installed:
- compton
- dmenu
- monofur (font)
- polybar
- pywal
- xbanish

## Makefile Skeleton

This isn't technically a config file, but I always need to copy one from online so thought I may as well store it with my dotfiles.

## Polybar

This is currently a very simple status bar displaying my current workspace, CPU temperature and the time. When I find the time and motivation I will change the colours to read from Xresources and make the bar float and in line with i3 spacings.

At the moment this configuration only depends on i3 being installed.

## Qutebrowser

I have configured Qutebrowsers to read the .json file produced by pywal in order to colour the various different components. The colouring isn't perfect right now, but its good enough and matches the i3 colouring nicely. In the future I plan to customise fonts and have another go at the colours.

## Tmux

This is a very standard config, enabling 256 colour, rebinding the prefix key and starting window numbering at 1. The only extra configuration involves vim-like keybindings to move between splits.

## Vim

I have recently simplified my .vimrc as I now use Emacs as a general purpose IDE. I still include several packages such as vim surround and targets, as well as tmux integration (switching between splits and tmux panes seamlessly). These plugins are loaded with vim-plug which has to be installed manually. 

## X11 / URxvt

My .Xresources configures URxvt's scroll bar, font and copy/paste behaviour.
My .xinitrc simply loads in Xresources and Xmodmap before starting i3.

## Zsh

My Zsh config depends on ohmyzsh being installed. Aside from these default settings I have just added a couple of aliases such that ls is run after cd, and runs emacs in the terminal when started in the terminal.
