# base goo
xcode-select --install

# Install homebrew packages
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
bash brews

# setup bash
cp .bashrc ~/.bashrc
source ~/.bashrc

# setup vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/.vimrc

# docker setup
# Option 1 (Preferred)
# Install Docker for Mac
https://docs.docker.com/v17.12/docker-for-mac/install/#download-docker-for-mac

# Option 2 
# Install VirtualBox first
docker-machine create --driver virtualbox default
docker-machine env default
eval $(docker-machine env default)
docker ps  # to check that it worked

# Better comparison of the docker options: https://docs.docker.com/v17.12/docker-for-mac/docker-toolbox/
