#!/bin/sh
# -*- coding: utf-8 -*-

printf '\033[31m%s\033[m\n' '[*]Install packages...'
sudo apt update                                                                           
sudo apt install -y software-properties-common 
sudo add-apt-repository -y ppa:jonathonf/vim 
sudo apt update
#sudo apt upgrade 
sudo apt -y install vim git

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/.git-completion.bash
source ~/.bashrc
