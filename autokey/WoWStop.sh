#!/bin/bash
kill $(ps auxf | grep WoWStart.sh | grep -v "grep" | awk '{ print $2 }')
