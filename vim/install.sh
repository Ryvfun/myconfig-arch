#!/bin/bash

read -r -p "Are You Sure, this script delete previos config of vim? [Y/n] " input

case $input in
    [yY][eE][sS]|[yY])
		echo "Installing vim"
    sudo pacman -S vim
    echo "Copy config"
    cp .vimrc ~/.vimrc
    echo "Install VimPlug"
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    RED='\033[1;31m'
    NC='\033[0m' # No Color
    printf "${RED}\n!!! Exec this commands in vim${NC}\n"
    echo ":source ~/.vimrc"
    echo ":PlugInstal"
		;;
    [nN][oO]|[nN])
        echo "Canceled :("
       		;;
    *)
	echo "Invalid input..."
	exit 1
	;;
esac
