#!/bin/bash
if ! [ -x "$(command -v zsh)" ]; then
    echo "Install zsh first please..."
    exit 1
fi

ln -sf $PWD/.zshrc ~/.zshrc
ln -sf $PWD/.zsh ~/.zsh

# Install zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# Install oh-my-zsh
export KEEP_ZSHRC='yes'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
