#!/bin/bash

source ../../../functions.sh

UBUNTU_VERSION=$(lsb_release -r | sed -e "s#Release:\t##")

# Install some uncommon dependancies
#sudo apt-get install -f libcrypto++9 libmediainfo0 libzen0

install_deb "https://mega.nz/linux/MEGAsync/xUbuntu_${UBUNTU_VERSION}/amd64" "megasync-xUbuntu_${UBUNTU_VERSION}_amd64.deb"
