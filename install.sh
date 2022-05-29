#!/bin/bash
# https://stackoverflow.com/questions/59895/how-can-i-get-the-source-directory-of-a-bash-script-from-within-the-script-itsel
export DOTFILES_TOP="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";

# Install zsh components
echo "Installing zsh components..."
pushd ./zsh
sh install.sh
popd

# Install nvim components
pushd ./nvim
sh install.sh
popd
