#!/bin/sh
apt-get update
apt-get -y install curl
apt-get -y install git
apt-get -y install vim
curl https://raw.githubusercontent.com/anton-ramanau/vim-properties/0d0ebd13a6f17d3e4b2263d1d6e93a2eab10d188/.vimrc > ~/.vimrc
