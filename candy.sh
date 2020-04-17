#!/bin/bash
# Run this script as root

	grep "^Color" /etc/pacman.conf >/dev/null || sed -i "s/^#Color$/Color/" /etc/pacman.conf &&
	grep "ILoveCandy" /etc/pacman.conf >/dev/null || sed -i "/#VerbosePkgLists/a ILoveCandy" /etc/pacman.conf

