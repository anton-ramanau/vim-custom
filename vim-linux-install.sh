#!/bin/sh

apt-get update

if ! command -v curl >/dev/null 2>&1; then
    apt-get -y install curl
fi

if ! command -v vim >/dev/null 2>&1; then
    apt-get -y install vim
fi

if ! command -v git >/dev/null 2>&1; then
    apt-get -y install git
fi

curl -f -o ~/.vimrc https://raw.githubusercontent.com/anton-ramanau/vim-custom/main/.vimrc
