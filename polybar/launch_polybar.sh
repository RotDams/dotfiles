#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
# Launch bar1 and bar2
for i in /sys/class/hwmon/hwmon*/temp*_input; do 
    if [ "$(<$(dirname $i)/name): $(cat ${i%_*}_label 2>/dev/null || echo $(basename ${i%_*}))" = "coretemp: Core 0"  ]; then
        export HWMON_PATH="$i"
    fi
done
if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        if [ $m == 'eDP-1' ] 
        then		
            MONITOR=$m polybar --reload default &
        elif [ $m == 'HDMI0' ]
        then
            MONITOR=$m polybar --reload default &
        else
            MONITOR=$m polybar --reload screen-2 &
        fi     
    done
else
    polybar --reload default &
fi
