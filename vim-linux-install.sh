#!/bin/sh
apt-get update
apt-get -y install curl
apt-get -y install git
apt-get -y install vim
curl https://raw.githubusercontent.com/anton-ramanau/vim-custom/main/.vimrc > ~/.vimrc
