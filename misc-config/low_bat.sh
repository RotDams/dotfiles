#!/bin/bash
export DISPLAY=:0
battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
battery_level=$(echo $battery_level | sed -e 's/\s.*$//')

if [ $battery_level -le 15 ] && [ $battery_level -gt 1 ] && [ "$(cat /sys/class/power_supply/BAT0/status)" != "Charging" ]
then
    notify-send "Battery low" "${battery_level}%" -t 15000 -i ~/.config/misc-config/low_bat.png
fi
