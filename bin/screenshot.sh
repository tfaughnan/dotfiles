#!/bin/sh -e

sel=$(slop -f "-i %i -g %g")
path=/tmp/"$(date +%s)".png
shotgun -f png $sel - > "$path"
notify-send "screenshot saved to $path"
