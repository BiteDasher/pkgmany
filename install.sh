#!/bin/bash
if [ "$1" ]; then
case $1 in
"remove")
	if [ "$2" ]; then
	sudo rm -rf $2/debmany $2/pkgmany /usr/share/debmany; else
	sudo rm -rf /usr/local/bin/debmany /usr/local/bin/pkgmany /usr/share/debmany; fi
	;;
*)
	sudo install -m 755 debmany $2/debmany
	sudo install -m 755 pkgmany $2/pkgmany
	sudo mkdir -p /usr/share/debmany
	;;
esac
else
	sudo install -m 755 debmany /usr/local/bin/debmany
	sudo install -m 755 pkgmany /usr/local/bin/pkgmany
	sudo mkdir -p /usr/share/debmany
fi
