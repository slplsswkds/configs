swayidle -w \
    timeout 400 'swaylock -f -c 000000' \
    #timeout 300 'swaylock -i ~/Pictures/lock.jpg -f -c 000000' \
    timeout 450 'swaymsg "output * dpms off"' \
    timeout 500 'systemctl suspend' \
         resume 'swaymsg "output * dpms on"' \
    before-sleep 'swaylock -f -c 000000'
    #before-sleep 'swaylock -i ~/Pictures/lock.jpg -f'
