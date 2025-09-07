#!/usr/bin/env bash
workdir="$( cd "$(dirname "$0")" >/dev/null 2>&1 || exit ; pwd -P )"
if [ ! -d ~/.local/share/nvim/site/pack/packer/start/packer.nvim ] ; then
	echo "### installing Packer"
	git clone --depth 1 https://github.com/wbthomason/packer.nvim\
		~/.local/share/nvim/site/pack/packer/start/packer.nvim
else
	echo "### Packer already installed"
fi
if [ ! -d ~/.config/nvim/lua ] ; then
	mkdir -p ~/.config/nvim/lua
fi
echo "### Config Copy"
cp "${workdir}/dotfiles/.config/nvim/lua/plugins.lua" ~/.config/nvim/lua/
cp "${workdir}/dotfiles/.config/nvim/init.lua" ~/.config/nvim/
echo "### Installation Done"
