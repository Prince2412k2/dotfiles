#!/bin/bash

PIDFILE="/tmp/server-mode.pid"

if [ -f "$PIDFILE" ]; then
  server_status="Server Mode (ON)"
else
  server_status="Server Mode (OFF)"
fi

# Define menu options
options="Suspend\nPower Off\nRestart\nHibernate\nLock\n$server_status"

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
"Lock")
  sleep 0.5s
  hyprlock &
  disown
  ;;
"Server Mode (ON)" | "Server Mode (OFF)")
  PIDFILE="/tmp/server-mode.pid"

  if [ -f "$PIDFILE" ]; then
    notify-send "Server Mode" "Disabled"
    kill $(cat "$PIDFILE")
    rm "$PIDFILE"
  else
    notify-send "Server Mode" "Enabled"

    sleep 0.5s
    hyprlock &
    disown

    systemd-inhibit --what=idle:sleep:handle-lid-switch \
      --why="Server mode active" \
      sleep infinity &

    echo $! >"$PIDFILE"
  fi
  ;;
esac

exit 0
