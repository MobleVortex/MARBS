#!/bin/sh

	## Kyle's Arch Budgie Desktop Installation and  dotfile script ##
	## dot files were stolen and tweaked from LARBS (Luke Smith)   ##

	## Makes ~/.config and moves dotfiles to the home directory ##
	mkdir ~/.config
 	mkdir ~/.config/foot
	cp .zshrc ~
	cp aliasrc ~/.config/
 	cp .nanorc ~
	cp foot.ini ~/.config/foot/
 
	## Makes pacman and yay have purtay coolers ##
	sudo bash candy.sh
 
	## Installs yay for AUR packages ##
	curl -sO https://aur.archlinux.org/cgit/aur.git/snapshot/yay.tar.gz &&
	tar -xvf yay.tar.gz &&
	cd "yay" &&
	makepkg --noconfirm -si

 	## Installs reflector and sort mirrors for the fast downloads ##
#	yay --noconfirm --needed -S reflector rsync

#	sudo reflector --verbose --country 'United States' --sort rate --save /etc/pacman.d/mirrorlist

	## Installs packages with yay, didn't seem to work with one line so there are 4 - and it's easier to read! ##
	yay --noconfirm --needed -S reflector rsync gparted adapta-gtk-theme papirus-icon-theme nano-syntax-highlighting f2fs-tools abiword zsh foot mpv rhythmbox breeze-adapta-cursor-theme-git dashbinsh brave-bin unzip zsh-syntax-highlighting ttf-liberation librewolf-bin noto-fonts ttf-roboto

#	yay --noconfirm --needed -S breeze-adapta-cursor-theme-git dashbinsh brave-bin unzip zsh-syntax-highlighting ttf-liberation librewolf-bin

#	yay --noconfirm --needed -R

 	## change shell to zsh & source
  	chsh -s /bin/zsh
	source ~/.zshrc
	
 	## log out and back in for zsh default
   	echo ### Log out and log in for default shell to change! ###
