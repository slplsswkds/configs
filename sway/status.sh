#!/bin/bash
# while echo "BAT: $(cat /sys/class/power_supply/C23B/capacity)_$(cat /sys/class/power_supply/C23B/status)   $(date +'%d-%m  %l:%M %p')"; do sleep 5; done
while 
  date="$(date +'%d-%m')"
  clock="$(date +'%l:%M %p')"
  battery_status="$(cat /sys/class/power_supply/C23B/status)" 
  battery_level="$(cat /sys/class/power_supply/C23B/capacity)"
  ssid="$(iw dev wlp16s0 link | grep SSID | cut -c 8-)"

  if [ $battery_level -gt 90 ]
  then
    battery_icon=""
  elif [ $battery_level -le 90 ] && [ $battery_level -gt 75 ]
  then
    battery_icon=""
  elif [ $battery_level -le 75 ] && [ $battery_level -gt 50 ]
  then
    battery_icon=""
  elif [ $battery_level -le 50 ] && [ $battery_level -gt 25 ]
  then
    battery_icon=""
  elif [ $battery_level -le 25 ]
  then
    battery_icon=""
    if [ $battery_status == 'Discharging' ]
      then
        notify-send "Low battery power"
    fi
  fi
  echo " $ssid   $battery_icon $battery_level% $battery_status    $date   $clock"
do sleep 5 
done
#┃ 
