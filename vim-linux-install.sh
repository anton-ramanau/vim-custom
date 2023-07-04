#!/bin/sh

apt-get update

if ! command -v curl >/dev/null 2>&1; then
    apt-get -y install curl
fi

if ! command -v vim >/dev/null 2>&1; then
    apt-get -y install vim
fi

curl -f -o ~/.vimrc https://raw.githubusercontent.com/anton-ramanau/vim-custom/main/.vimrc
