#!/bin/bash
if [ -d ~/.config/fish/ ] ; then
	mkdir -p ~/.config/fish/
fi
if [ -f ~/.config/fish/config.fish ] ; then
	echo "Fish config already existent, aborting"
	exit
fi
workdir="$( cd "$(dirname "$0")" >/dev/null 2>&1 || exit ; pwd -P )"
cp "${workdir}/dotfiles/.config/fish/config.fish" ~/.config/fish/config.fish
echo "### Fish Config installed"
