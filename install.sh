#!/bin/bash

# Install nvim components
echo "Installing nvim components..."
cd ./nvim
sh install.sh
cd ..

# Install zsh components
echo "Installing zsh components..."
cd ./zsh
sh install.sh
cd ..
