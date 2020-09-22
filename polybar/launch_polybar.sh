#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
  # Launch bar1 and bar2
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ $m == 'eDP1' ] 
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