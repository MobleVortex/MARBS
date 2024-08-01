#!/bin/sh

	## MobileVortex Arch Desktop Installation and  dotfile script ##
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

 	## Installs reflector and sort mirrors for the fast downloads 
	yay --noconfirm --needed -S reflector rsync 

	## No longer necessary with new archinstall script
#	sudo reflector --verbose --country 'United States' --sort age --save /etc/pacman.d/mirrorlist

	## Force syncs newest mirrors and updates current packages before installing new packages
	up

	## Installs packages with yay
	yay --noconfirm --needed -S linux-headers transmission-gtk3 electrum nextcloud-client reflector rsync gparted adapta-gtk-theme papirus-icon-theme nano-syntax-highlighting f2fs-tools abiword zsh foot mpv rhythmbox breeze-adapta-cursor-theme-git dashbinsh brave-bin unzip zsh-syntax-highlighting ttf-liberation librewolf-bin noto-fonts ttf-roboto dconf-editor gnome-browser-connector gnome-bluetooth gnome-screenshot bpytop

 	## Load dconf settings for gnome
 	dconf load / < ~/marbs/dconf-settings.ini
	
 	## Remove unwanted gnome packages

	yay --noconfirm -R gnome-tour gnome-logs gnome-maps gnome-software gnome-music gnome-clocks gnome-contacts gnome-calendar gnome-user-docs gnome-remote-desktop gnome-characters gnome-user-share gnome-text-editor gnome-connections gnome-font-viewer yelp malcontent totem orca simple-scan epiphany rygel

 	## change shell to zsh & source
  	chsh -s /bin/zsh
	source ~/.zshrc
	
 	## log out and back in for zsh default
   	gnome-session-quit --no-prompt --force
