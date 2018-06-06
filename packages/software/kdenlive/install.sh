#!/bin/bash

#install_package kdenlive ppa:kdenlive/kdenlive-stable


wget http://www-ftp.lip6.fr/pub/X11/kde-applicationdata/kdenlive/release/kdenlive-18.04.1-x86_64.AppImage

mkdir -p ~/soft

mv kdenlive-18.04.1-x86_64.AppImage ~/soft

chmod +x ~/soft/kdenlive-18.04.1-x86_64.AppImage
