
Debian
====================
This directory contains files used to package sanacoind/sanacoin-qt
for Debian-based Linux systems. If you compile sanacoind/sanacoin-qt yourself, there are some useful files here.

## sanacoin: URI support ##


sanacoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install sanacoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your sanacoinqt binary to `/usr/bin`
and the `../../share/pixmaps/sanacoin128.png` to `/usr/share/pixmaps`

sanacoin-qt.protocol (KDE)
