#!/bin/sh

# Update brew and install dependencies
brew update
brew bundle

# Install CPython and anaconda
source ~/.dotfiles/install/python.sh

# Generate symlinks
env RCRC=$HOME/.dotfiles/rcrc rcup
rcup -v

# Set zsh as default shell
chsh -s $(which zsh)
