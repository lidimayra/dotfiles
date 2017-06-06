# Install hub binaries and documentation
wget https://github.com/github/hub/releases/download/v2.2.5/hub-linux-amd64-2.2.5.tgz -P ~/Downloads
tar zvxvf ~/Downloads/hub-linux-amd64-2.2.5.tgz -C ~/Downloads
sudo ~/Downloads/hub-linux-amd64-2.2.5/install

# Repositories
sudo add-apt-repository ppa:martin-frost/thoughtbot-rcm

# Download and install the key from Google Linux Repository
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# Add key to the repository
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

sudo apt-get update

# General Packages
sudo apt-get -qq install curl
sudo apt-get -qq install google-chrome-stable
sudo apt-get -qq install rcm
sudo apt-get -qq install silversearcher-ag
sudo apt-get -qq install tmux
sudo apt-get -qq install vim
sudo apt-get -qq install zsh

# Docker
sudo apt-get install -qq linux-image-extra-$(uname -r) # Recommended extra packages, which
sudo apt-get install -qq linux-image-extra-virtual     # allow to use `aufs` storage drivers.
sudo apt-get install -qq apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable"
sudo apt-get -qq install docker-ce

# Docker Compose
curl -L "https://github.com/docker/compose/releases/download/1.11.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# pyenv
curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
pyenv update

# pyenv requirements for building
# https://github.com/pyenv/pyenv/wiki/Common-build-problems#requirements
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
  libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils

# Install Google Cloud SDK
wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-157.0.0-linux-x86_64.tar.gz -P ~/Downloads
tar zvxvf ~/Downloads/google-cloud-sdk-157.0.0-linux-x86_64.tar.gz -C ~/Downloads
~/Downloads/google-cloud-sdk/install.sh
