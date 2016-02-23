#!/usr/bin/env bash

# create phprc file
mkdir -p ~/.php/5.6
echo "extension = phar.so
suhosin.executor.include.whitelist = phar" >> ~/.php/5.6/phprc

# remove old versions of env files
rm ~/.profile
rm ~/.bash_profile
rm ~/.bashrc

# create new versions of env files
echo "shopt -s expand_aliases
export PATH=/usr/local/php56/bin:\\$PATH
alias composer=\\$HOME/bin/composer.phar" >> ~/.profile

echo "umask 002" >> ~/.bashrc

echo "source ~/.profile
source ~/.bashrc" >> ~/.bash_profile

# reload bash config
source ~/.bash_profile

# install composer
mkdir -p ~/bin
cd ~/bin && curl -s https://getcomposer.org/installer | php

# remove current directory (it’s in the way)
rm -r ~/$1/current
touch ~/$1/current

# add the config directory
mkdir -p ~/$1/shared/config

# reload bash config
source ~/.bash_profile
