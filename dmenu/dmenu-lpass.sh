#!/bin/bash

source /home/kelaun/.dmenurc

selection=`echo -e $(lpass ls | awk -F '[/[]' '{print $(NF-1)"\\\n"}') | dmenu $DMENU_OPTIONS`

if [ "$selection" != "" ]; then
    lpass show -c --password $selection &
fi
