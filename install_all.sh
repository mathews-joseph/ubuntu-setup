#!/bin/sh

sudo apt install zsh git curl terminator vim fonts-powerline

# oh-my-zsh and zsh-syntax-highlighting
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
sed -i '/plugins=(git/s/)$/ zsh-syntax-highlighting)/' ~/.zshrc
sed -i 's/robbyrussell/arrow/' ~/.zshrc
source ~/.zshrc

# vim and vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/.vimrc
vim +PluginInstall +qall

# terminator
cp -r terminator ~/.config/