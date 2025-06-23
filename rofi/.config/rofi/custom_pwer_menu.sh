#!/bin/bash

# Define menu options
options="Suspend\nPower Off\nRestart\nHibernate"

# Show menu
choice=$(echo -e "$options" | rofi -dmenu -p "Power Menu")

# Perform action based on choice
case "$choice" in
"Power Off")
  systemctl poweroff
  ;;
"Restart")
  systemctl reboot
  ;;
"Suspend")
  sleep 0.5s
  hyprlock &
  disown
  systemctl suspend
  ;;
"Hibernate")
  sleep 0.5s
  hyprlock &
  disown
  systemctl hibernate
  ;;
esac

exit 0
