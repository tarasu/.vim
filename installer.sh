#!/bin/sh

cp -r ~/.vim ~/.vim.old 2>/dev/null
rm -fr ~/.vim 2>/dev/null
rm -f ~/.vimrc 2>/dev/null

git clone https://github.com/tarasu/.vim ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cd ~/.vim

rake install
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/ackrc ~/.ackrc
cd ~/
