#!/usr/bin/env bash
release="v3.1.1"

if [ ! -d ~/.local/share/fonts/ ]; then
	mkdir ~/.local/share/fonts/ -p
fi
if [ -d ~/.local/share/fonts/JetBrainsMono ] ; then
	echo "JetbrainsMono already installed"
	exit
fi
if [ -f ~/.local/share/fonts/JetBrainsMono/JetBrainsMono.tar.xz ] ; then
	rm ~/.local/share/fonts/JetBrainsMono/etBrainsMono.tar.xz
fi
mkdir ~/.local/share/fonts/JetBrainsMono/
cd ~/.local/share/fonts/JetBrainsMono/ || exit
wget "https://github.com/ryanoasis/nerd-fonts/releases/download/${release}/JetBrainsMono.tar.xz"
tar -xf JetBrainsMono.tar.xz
rm JetBrainsMono.tar.xz

