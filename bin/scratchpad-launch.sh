#!/bin/sh

bspc query -N -n .floating | xargs -i sh -c 'bspc query --node {} -T | grep -q kitty_scratchpad && echo {} > /tmp/scratchpad_id'
exec "$SHELL"
