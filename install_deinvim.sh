#!/bin/sh
# -*- coding: utf-8 -*-

printf '\033[31m%s\033[m\n' '[*]Install dein.vim...'
mkdir -p ~/.cache/dein
cd ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
