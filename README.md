# MARBS

How to use the badness:

git clone https://github.com/MobleVortex/MARBS.git

cd MARBS

bash install.sh

log out, log back in

If the dot files don't get copied for whatever reason then:

cd MARBS

bash copy.sh

There's no Display Manager - I don't use one.

Configure Budgie to your liking.

To launch st I set the keyboard shortcut Super + ENTER to run /usr/local/bin/./st

No other terminals are included in the install script

Unclutter does not run by default - I'm too stoopid to figure out how to make it work with .xinitrc

To run it at startup go to Budgie Settings -> Autostart

Add command unclutter -b

Enjoy.
