#!/bin/bash
start-pulseaudio-x11 &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
xfce4-power-manager &
autokey-gtk &
redshift-gtk -l 50.85045:4.34878 -t 6500:3600 &
/home/kelaun/.screenlayout/desktop.sh &
nitrogen --restore &
dunst &
