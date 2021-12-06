#!/bin/sh

pkill -u "$USER" -USR1 dunst

. "$HOME/.cache/wal/colors.sh"

i3lock \
    -n \
    --image="$HOME/img/lock.png" \
    --centered \
    --blur=10 \
    --clock \
    --ind-pos="w/2:h/2-150" \
    --radius=20 \
    --ring-width=5 \
    --inside-color=00000000 \
    --insidever-color=$foreground \
    --insidewrong-color=ff0000 \
    --ring-color=$foreground \
    --ringver-color=$foreground \
    --ringwrong-color=ff0000 \
    --line-uses-inside \
    --keyhl-color=$background \
    --bshl-color=$color3 \
    --separator-color=$background \
    --verif-color=00ff00 \
    --verif-text="" \
    --wrong-color=ff0000 \
    --wrong-text=""  \
    --noinput-text="" \
    --time-pos="w/2:h/2-40" \
    --time-color=$foreground \
    --time-str="%H:%M" \
    --time-font="Fira Code" \
    --time-size=90 \
    --date-pos="tx:ty+60" \
    --date-color=$color3 \
    --date-str="%A, %B %d" \
    --date-font="Fira Code" \
    --date-size=40 \
    --greeter-pos="w/2:2*h/3" \
    --greeter-color=$foreground \
    --greeter-text=""

pkill -u "$USER" -USR2 dunst
