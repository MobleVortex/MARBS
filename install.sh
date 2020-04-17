#!/bin/sh

	## Kyle's Arch Budgie Desktop Installation and  dotfile script ##
	## dot files were stolen and tweaked from LARBS (Luke Smith)   ##

	## Makes pacman and yay have purtay coolers ##
	sudo bash candy.sh

	## Installs reflector and sort mirrors for the fast downloads ##
	sudo pacman --noconfirm --needed -S reflector

	sudo reflector --verbose --country 'United States' --sort rate --save /etc/pacman.d/mirrorlist

	## Installs yay for AUR packages ##
	curl -sO https://aur.archlinux.org/cgit/aur.git/snapshot/yay.tar.gz &&
	tar -xvf yay.tar.gz &&
	cd "yay" &&
	makepkg --noconfirm -si

	## Move dotfiles to home ##
	bash copy.sh

	## Installs packages with yay, seemed to work with one line so there are 4 - and it's easier to read! ##
	yay --noconfirm --needed -S gparted adapta-gtk-theme papirus-icon-theme budgie-desktop budgie-extras dash f2fs-tools abiword

	yay --noconfirm --needed -S xcursor-breeze-adapta dashbinsh brave-bin unrar unzip zsh-syntax-highlighting unclutter ttf-liberation

	yay --noconfirm --needed -S pulseaudio-alsa pulsemixer neovim gnome-keyring gnome-control-center network-manager-applet xdg-utils

	yay --noconfirm --needed -S xorg-fonts xorg-server xorg-xinit budgie-calendar-applet xorg-xset gnome-backgrounds  gnome-disk-utility

	## Installs Luke's build of st so I can suck a little less ##
	git clone https://github.com/lukesmithxyz/st.git &&
	cd st &&
	sudo make install

	## Getting rid of nano cause I use it to install Arch - I don't like using nvim if it isn't pretty! ##
	yay -R nano
