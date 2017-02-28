#!/bin/sh

# Update brew and install dependencies
brew update
brew bundle

# Download plug.vim and put it in the `autoload` directory
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install CPython and anaconda
source ~/.dotfiles/install/python.sh

# Generate symlinks
env RCRC=$HOME/.dotfiles/rcrc rcup
rcup -v

# Set zsh as default shell
chsh -s $(which zsh)
