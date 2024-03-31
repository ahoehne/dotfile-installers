#!/bin/bash
workdir="$( cd "$(dirname "$0")" >/dev/null 2>&1 || exit ; pwd -P )"
cp ~/.config/nvim/init.lua "${workdir}/../dotfiles/.config/nvim/" 
cp ~/.config/nvim/lua/plugins.lua "${workdir}/../dotfiles/.config/nvim/lua/" 
