#!/bin/sh
#

screenshot() {
	case $1 in
	full)
		scrot -m -e 'mv $f /home/kelaun/Pictures/Screenshots/'
		;;
	window)
		sleep 1
		scrot -s -e 'mv $f /home/kelaun/Pictures/Screenshots/'
		;;
	*)
		;;
	esac;
}

screenshot $1
