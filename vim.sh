#!/bin/bash
workdir="$( cd "$(dirname "$0")" >/dev/null 2>&1 || exit ; pwd -P )"
echo "### Config Copy"
cp "${workdir}/dotfiles/.vimrc" ~/.vimrc
echo "### Installation Done"
