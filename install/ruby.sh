#!/bin/sh

mkdir -p ~/bin

# Download and install chruby
cd ~/bin
wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
tar xzvf ~/bin/chruby-0.3.9.tar.gz
cd chruby-0.3.9
sudo make install
sudo ./scripts/setup.sh
rm ~/bin/chruby-0.3.9.tar.gz

# Download and install ruby-install
cd ~/bin
wget -O ruby-install-0.7.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.7.0.tar.gz
tar xzvf ~/bin/ruby-install-0.7.0.tar.gz
cd ruby-install-0.7.0
sudo make install
rm ~/bin/ruby-install-0.7.0.tar.gz
