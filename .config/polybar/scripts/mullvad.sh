#!/bin/sh

connected="$(curl -s https://am.i.mullvad.net/json | jq .mullvad_exit_ip)"
case "$connected" in
    true) echo '' ;;
    false) echo '' ;;
    *) echo '' ;;
esac
