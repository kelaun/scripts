#!/bin/bash
#
# a simple dmenu session script 
#
###

. $HOME/.dmenurc
DMENU="dmenu $DMENU_OPTIONS"
choice=$(echo -e "shutdown\nreboot\nsuspend" | $DMENU)

case "$choice" in
  shutdown) shutdown -h now & ;;
  reboot) shutdown -r now & ;;
  suspend) systemctl suspend & ;;
esac
