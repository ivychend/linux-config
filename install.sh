#!/bin/bash

# autoconf for compilation
sudo apt-get install -y samba openssh-server openssh-client git curl
sudo apt-get install -y autoconf 


# download ripgrep 
wget https://github.com/BurntSushi/ripgrep/releases/download/11.0.1/ripgrep_11.0.1_amd64.deb
sudo dpkg -i ripgrep_11.0.1_amd64.deb

## install nodejs and npm, needed by vim coc.vim
#sudo apt-get install curl python-software-properties
## version 12.x
## curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
#curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
#sudo apt-get install -y nodejs

# install git completion script
# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
# source .git-completion.bash               # add one line to ~/.bashrc or /etc/skel/.bashrc 
# sudo apt-get reinstall bash-completion    # reinstall bash-completion maybe fixed the problam



