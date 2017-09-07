#!/usr/bin/env bash

# Example:
# $ ./dreamhost.sh domain.com staging.domain.com

# Moving into position
cd "${0%/*}"

echo -e "\e[1;31mInstalling user profile files\e[0m"

# Add our phprc file
mkdir -p ~/.php/7.0
mv ./src/phprc ~/php/7.0/

# Remove old versions of env files
rm ~/.profile
rm ~/.bash_profile
rm ~/.bashrc

# Move in our new env files
mv ./src/profile ~/.profile
mv ./src/bashrc ~/.bashrc
mv ./src/bash_profile ~/.bash_profile

# Reload bash profile
source ~/.bash_profile

# Install composer
echo -e "\e[1;31mPreparing to install Composer\e[0m"

mkdir -p ~/bin
cd ~/bin && curl -s https://getcomposer.org/installer | php

# Back to home
cd "${0%/*}"

# Loop through domains
echo -e "\e[1;31mSetting up domain directories\e[0m"

for domain in "$@"; do

	# add the config directory
	mkdir -p ~/"$domain"/shared/config

	# remove current directory (it’s in the way)
	rm -r ~/"$domain"/current
	touch ~/"$domain"/current

done

# reload bash config
source ~/.bash_profile
