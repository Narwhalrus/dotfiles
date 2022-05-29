#!/bin/bash

# Install nvim components
echo "Installing nvim components..."
pushd ./nvim
sh install.sh
popd

# Install zsh components
echo "Installing zsh components..."
pushd ./zsh
sh install.sh
popd
