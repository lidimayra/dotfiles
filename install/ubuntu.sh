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

# Packages
sudo apt-get -qq install curl
sudo apt-get -qq install google-chrome-stable
sudo apt-get -qq install rcm
sudo apt-get -qq install silversearcher-ag
sudo apt-get -qq install tmux
sudo apt-get -qq install vim
sudo apt-get -qq install zsh

# pyenv
curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
pyenv update

# pyenv requirements for building
# https://github.com/pyenv/pyenv/wiki/Common-build-problems#requirements
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
  libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils
