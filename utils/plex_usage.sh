#!/bin/bash

size_movie=$(ssh -q plex "df --output=pcent,target | grep /Media/Movies" | sed 's/% \/Media\/Movies//g' | sed 's/ //g')
size_pictures=$(ssh -q plex "df --output=pcent,target | grep /Media/Pictures" | sed 's/% \/Media\/Pictures//g' | sed 's/ //g')
size_tv=$(ssh -q plex "df --output=pcent,target | grep /Media/TV" | sed 's/% \/Media\/TV//g' | sed 's/ //g')

if [[ $# -eq 1 ]]; then
				echo -e "Movie is $((100-$size_movie))% free on Plex.
Pictures is $((100-$size_pictures))% free on Plex.
TV Shows is $((100-$size_tv))% free on Plex."
				exit 0
fi

if [[ $size_movie -ge 90 ]]; then
				notify-send "Movie is $size_movie% in use on Plex."
				
fi

if [[ $size_pictures -ge 90 ]]; then
				notify-send "Pictures is $size_pictures% in use on Plex."
fi

if [[ $size_tv -ge 90 ]]; then
				notify-send "TV Shows is $size_tv% in use on Plex."
fi
