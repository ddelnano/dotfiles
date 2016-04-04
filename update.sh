#!/bin/bash

# Update dotfiles configuration

# tmux
tmux source-file ~/.tmux.conf

# Vim
vim +PlugInstall
