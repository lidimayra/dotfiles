#!/bin/bash

kernelName="$(uname -s)"

if [ "$kernelName" == "Darwin" ]; then
  # Update brew and install dependencies
  brew update && brew bundle
elif [ "$kernelName" == "Linux" ]; then
  # Run script to install ubuntu packages
  source ~/.dotfiles/install/ubuntu.sh
fi

# Download plug.vim and put it in the `autoload` directory
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Clone Tmux Plugin Manager
if [ ! -d "$HOME/.tmux/plugins" ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# Install CPython and anaconda
source ~/.dotfiles/install/python.sh

# Install Ruby lastest stable version with Rails using RVM
source ~/.dotfiles/install/ruby.sh

# Generate symlinks
env RCRC=$HOME/.dotfiles/rcrc rcup
rcup -v
ln -s ~/vimrc ~/.ideavimrc

# Set zsh as default shell
chsh -s $(which zsh)
