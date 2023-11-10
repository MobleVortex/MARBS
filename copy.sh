#!/bin/bash

	## Included as a fail safe should install.sh not copy the dotfiles ##
	## Moves dotfiles to the home directory ##
	cp .xinitrc ~
	cp .profile ~
	cp .zprofile ~
	cp .zshrc ~
	cp aliasrc ~/.config/
	cp -r nvim ~/.config/
	cp .nanorc ~
