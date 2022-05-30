#!/bin/bash
# Adjust this if you ever want a different version
NVIM_VERSION=v0.7.0
LOCAL_BIN=~/.local/bin
NVIM_APPIMAGE_URL="https://github.com/neovim/neovim/releases/download/${NVIM_VERSION}/nvim.appimage"

# Download desired nvim version
[ ! -d "${LOCAL_BIN}" ] && mkdir -p "${LOCAL_BIN}"

wget -O "${LOCAL_BIN}/nvim.appimage" ${NVIM_APPIMAGE_URL} 
ln -sf "${LOCAL_BIN}/nvim.appimage" "${LOCAL_BIN}/nvim"

[ ! -d ~/.config ] && mkdir ~/.config

ln -sf $PWD/config ~/.config/nvim
