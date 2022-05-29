Neovim configuration files

# Installation

## Requirements
neovim >= v0.5.0

## Install neovim

### Package manager

If your package manager has neovim version >=v0.5.0

```bash
# For Ubuntu/Debian
sudo apt install neovim
```
### Appimage

Otherwise install the appimage from [neovim github](https://github.com/neovim/neovim) and create a symlink in ~/.local/bin

```bash
mkdir ~/.local/bin && ln -s $APPIMAGE_LOC ~/.local/bin
```
Add ~/.local/bin to your PATH

## Install Config Files

Clone this repo into ~/.config/nvim

When you first launch neovim is should bootstrap [packer](https://github.com/wbthomason/packer.nvim)
