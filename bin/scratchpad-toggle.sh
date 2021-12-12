#!/bin/sh

# if we accidentally killed the scratchpad, resurrect it
if ! pgrep -f kitty_scratchpad > /dev/null; then
    kitty --name kitty_scratchpad -c ~/.config/kitty/scratchpad.conf ~/bin/scratchpad-launch.sh &
fi

id=$(cat /tmp/scratchpad_id)
bspc node "$id" --flag hidden
bspc node -f "$id"
