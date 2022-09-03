#! /bin/bash
killall dmenu 
action="$(echo "systemctl poweroff
systemctl reboot" | dmenu )"
exec $action
