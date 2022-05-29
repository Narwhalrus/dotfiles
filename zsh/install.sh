#!/bin/bash
if [ ! command -v zsh &> /dev/null ]
then
    echo "Install zsh first please..."
    exit 1
fi

ln -s .zshrc ~/.zshrc
ln -s .zsh ~/.zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
