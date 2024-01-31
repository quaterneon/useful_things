# base goo
xcode-select --install

# Install homebrew packages
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
bash brews.sh

# setup bash
#cp .bashrc ~/.bashrc
#source ~/.bashrc

# setup zsh
cp .zshrc ~/.zshrc
source ~/.zshrc

# setup vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/.vimrc

echo REMINDERS:
echo 1. Manually install docker engine
