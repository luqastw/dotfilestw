#!/bin/bash

# Opções
lock="Block"
logout="Exit"
suspend="Suspend"
reboot="Reboot"
shutdown="Shutdown"

if [ "$BLOCK_BUTTON" ]; then
  options="$lock\n$logout\n$suspend\n$reboot\n$shutdown"

  selected=$(echo -e "$options" | dmenu -i -p "System:" \
    -fn 'JetBrains Mono Nerd Font-10' \
    -nb '#0a0a0a' \
    -nf '#d1d1d1' \
    -sb '#5e6a71' \
    -sf '#ffffff')

  case "$selected" in
  "$lock")
    i3lock
    ;;
  "$logout")
    i3-msg exit
    ;;
  "$suspend")
    systemctl suspend
    ;;
  "$reboot")
    systemctl reboot
    ;;
  "$shutdown")
    systemctl poweroff
    ;;
  esac
fi

echo "⏻"
echo "⏻"
echo "#d1d1d1"
