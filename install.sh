#!/bin/bash

# Create symlinks for all config files
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/nvim ~/.config/nvim

echo "Dotfiles installed!"
