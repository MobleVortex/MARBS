#!/bin/sh

	## Kyle's Arch Budgie Desktop Installation and  dotfile script ##
	## dot files were stolen and tweaked from LARBS (Luke Smith)   ##

	## Makes ~/.config and moves dotfiles to the home directory ##
	mkdir ~/.config
 	mkdir ~/.config/foot
	cp .xinitrc ~
	cp .profile ~
	cp .zprofile ~
	cp .zshrc ~
	cp aliasrc ~/.config/
	cp -r nvim ~/.config/
 	cp .nanorc ~
	cp foot.ini
 
	## Makes pacman and yay have purtay coolers ##
	sudo bash candy.sh
 
	## Installs yay for AUR packages ##
	curl -sO https://aur.archlinux.org/cgit/aur.git/snapshot/yay.tar.gz &&
	tar -xvf yay.tar.gz &&
	cd "yay" &&
	makepkg --noconfirm -si

 	## Installs reflector and sort mirrors for the fast downloads ##
	yay --noconfirm --needed -S reflector

	sudo reflector --verbose --country 'United States' --sort rate --save /etc/pacman.d/mirrorlist



	## Installs packages with yay, didn't seem to work with one line so there are 4 - and it's easier to read! ##
	yay --noconfirm --needed -S gparted adapta-gtk-theme papirus-icon-theme nano-syntax-highlighting f2fs-tools abiword zsh foot

	yay --noconfirm --needed -S breeze-adapta-cursor-theme-git dashbinsh brave-bin unrar unzip zsh-syntax-highlighting unclutter ttf-liberation

	yay --noconfirm --needed -S mpv rhythmbox librewolf-bin
