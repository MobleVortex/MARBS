#!/bin/bash
# Run this script as root

	grep "^Color" /etc/pacman.conf >/dev/null || sed -i "s/^#Color$/Color/" /etc/pacman.conf &&
	grep "^VerbosePkgLists" /etc/pacman.conf >/dev/null || sed -i "s/^#VerbosePkgLists$/VerbosePkgLists/" /etc/pacman.conf &&
	grep "^ParallelDownloads = 5" /etc/pacman.conf >/dev/null || sed -i "s/^#ParallelDownloads = 5$/ParallelDownloads = 5/" /etc/pacman.conf && 
	grep "ILoveCandy" /etc/pacman.conf >/dev/null || sed -i "/#VerbosePkgLists/a ILoveCandy" /etc/pacman.conf

