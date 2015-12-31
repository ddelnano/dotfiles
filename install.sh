#!/bin/bash

# Installer for dotfiles

# Install vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Import helper functions
source 'scripts/helpers.sh'

# Add check if system is OS X or Linux for
# system specific configuration

# Vim Setup

if ask_response 'Do you want to install vim configuration (y/n)'; then
    ln -sf $HOME/Code/dotfiles/vim/vimrc $HOME/.vimrc
    echo "Installing vim configuration"
else
    echo "Ignoring vim configuration"
fi
