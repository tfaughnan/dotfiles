#!/bin/sh

# modified version of:
# https://github.com/jizcu/Dotfiles/blob/master/polybar/scripts/powermenu

theme="$HOME/.config/polybar/scripts/powermenu.rasi"

lock=" Lock"
logout=" Logout"
reboot=" Reboot"
shutdown=" Shutdown"

options="$lock\n$logout\n$reboot\n$shutdown"

chosen="$(echo -e "$options" | rofi -theme "$theme" -p "" -dmenu -selected-row 0)"
case $chosen in
    $shutdown)
        notify-send shutdown
        ;;
    $reboot)
        notify-send reboot
        ;;
    $lock)
        $HOME/bin/lock.sh
        ;;
    $logout)
        notify-send lgout
        ;;
esac

