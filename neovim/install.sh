#!/bin/bash
# Adjust this if you ever want a different version
NVIM_VERSION=v0.7.0
LOCAL_BIN=~/.local/bin
NVIM_APPIMAGE_URL="https://github.com/neovim/neovim/releases/download/${NVIM_VERSION}/nvim.appimage"

# Check if nvim isn't installed or if it is installed but the version is < v0.5.0
if  [ ! command -v nvim &> /dev/null ] || \
    [[ "$(nvim -v | head -n 1 | sed 's/NVIM v\([0-9]\.[0-9]\.[0-9]\)/\1/')" < "0.5.0" ]]
then
    # Download desired nvim version
    [ ! -d "${LOCAL_BIN}" ] && mkdir "${LOCAL_BIN}"
    wget -O "${LOCAL_BIN}" ${NVIM_APPIMAGE_URL} 
    ln -s "${LOCAL_BIN}/nvim.appimage" "${LOCAL_BIN}/nvim"
fi

ln -s config ~/.config/nvim
