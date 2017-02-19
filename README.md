# My dotfiles 🔨

## Usage

I'm using thoughtbot [rcm](https://thoughtbot.github.io/rcm/) to manage my dotfiles. Installation instructions available [here](https://github.com/thoughtbot/rcm#installation).

Clone files into _~/.dotfiles_ folder.

```
git clone git@github.com:lidimayra/dotfiles.git ~/.dotfiles && cd ~/.dotfiles
```

Change [gitconfig](https://github.com/lidimayra/dotfiles/blob/master/gitconfig) data to setup your name and e-mail.

Update zprezto submodule.
```
git submodule update --init --recursive
```

Use rcm `rcup` command to generate symlinks pointing to _~/.dotfiles_ folder.
If you want prezto, just call:
```
rcup -v
```
If you do not want prezto, exclude it by using `-x` option:
```
rcup -v -x zprezto
```

If installing prezto, a new Zsh configuration will be needed. Generate it by running:
```
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```

Then source your _~/.zshrc_
```
source ~/.zshrc
```
