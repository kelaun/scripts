#!/bin/bash
# baraction.sh script for spectrwm status bar

while :; do

# NETWORK
NETSTAT="$(nmcli -p | grep wlo1 | head -1 | awk '{ print $2 }')"
NETNAME="$(if [ $NETSTAT == "connected" ]; then echo "$(nmcli -p | grep wlo1 | head -1 | awk '{ print $4 }')"; else echo $NETSTAT; fi)"

# VOLUME
VOLUME="$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')%"

# DATE
TODAY="$(date "+%d %B, %H:%M")"

# PACKAGES
PACKGS="$(pacman -Q | wc -l)"

# Final bar
echo "Packages: ${PACKGS}   Network: ${NETNAME}   Volume: ${VOLUME}   Date: ${TODAY}"
sleep 1

done
