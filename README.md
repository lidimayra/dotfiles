# My dotfiles 🔨

## Requirements
* macOS
* [Homebrew](https://brew.sh/)

## Usage

Clone files into _~/.dotfiles_ folder.

```
git clone git@github.com:lidimayra/dotfiles.git ~/.dotfiles && cd ~/.dotfiles
```

Change [gitconfig](https://github.com/lidimayra/dotfiles/blob/master/gitconfig) data to setup your name and e-mail.

Update zprezto submodule.
```
git submodule update --init --recursive
```

Run the installation script
```
./install/setup.sh
```

This script sets zsh as the default shell. Changes will be available next time you login.

To install vim plugins, run `:PlugInstall` in vim.
