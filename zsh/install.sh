#!/bin/bash

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ln -s .zshrc ~/.zshrc
ln -s .zsh ~/.zsh
