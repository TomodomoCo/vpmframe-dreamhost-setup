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
alias composer=\\$HOME/bin/composer.phar
alias v=vim
alias ll=ls -la" >> ~/.profile

echo "umask 002" >> ~/.bashrc

echo "source ~/.profile
source ~/.bashrc" >> ~/.bash_profile

# reload bash config
source ~/.bash_profile

# install composer
mkdir -p ~/bin
cd ~/bin && curl -s https://getcomposer.org/installer | php

# add the config directory
mkdir -p ~/$1/shared/config

# move the acme challenge directory
mv ~/$1/current/public/.well-known ~/$1/shared/config

# remove current directory (it’s in the way)
rm -r ~/$1/current
touch ~/$1/current

# reload bash config
source ~/.bash_profile
