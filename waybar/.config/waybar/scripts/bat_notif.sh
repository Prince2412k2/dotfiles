#!/bin/bash

STATUS=$(cat /sys/class/power_supply/BAT0/status)
PERCENT=$(cat /sys/class/power_supply/BAT0/capacity)
if [[ "$STATUS" == "Discharging" && $PERCENT -lt 20 ]]; then
  notify-send "Battery Low" "Level is ${PERCENT}%. Plug in your charger."
fi
