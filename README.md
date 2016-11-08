# VIM Bundle for Ruby On Rails

## Requirements

Vim 7.3 or better

## Install

    cd ~/
    bash <(curl -s https://raw.githubusercontent.com/tarasu/.vim/master/installer.sh)

#### Install Dependacies

*MacOS*

    brew install ack
    brew install ctags

Note: MacOS comes with the BSD version of ctags which is not compatible.

*Ubuntu*

    sudo apt-get install exuberant-ctags
    sudo apt-get install ack-grep
    sudo ln -s /usr/bin/ack-grep /usr/local/bin/ack

## Update

    cd ~/.vim
    rake update

# TODO: Basic Mappings
