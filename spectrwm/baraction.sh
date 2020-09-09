#!/bin/bash
# baraction.sh script for spectrwm status bar

while :; do

# NETWORK
NETSTAT="$(nmcli -p | grep wlan0 | head -1 | awk '{ print $2 }')"
NETNAME="$(if [ $NETSTAT == "connected" ]; then echo "$(nmcli -p | grep wlan0 | head -1 | awk '{ print $4 }')"; else echo $NETSTAT; fi)"

# VOLUME
VOLUME="$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')%"

# DATE
TODAY="$(date "+%d %B, %H:%M")"

# BATTERY
STATE="$(cat /sys/class/power_supply/BAT0/status)"
PERCENT="$(cat /sys/class/power_supply/BAT0/capacity)"
BAT="$(case $STATE in 
  "Full") echo "Full";;
  "Discharging") echo "$PERCENT%";;
  *) echo "Charging";;
esac)"

# PACKAGES
PACKGS="$(pacman -Q | wc -l)"

# Final bar
echo "PKG: ${PACKGS}   BAT: ${BAT}   NET: ${NETNAME}   VOL: ${VOLUME}   ${TODAY}"
sleep 1

done
