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
    -fn 'Liberation Mono-10' \
    -nb '#1a1a1a' \
    -nf '#e8d5b7' \
    -sb '#e87843' \
    -sf '#1a1a1a')

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
echo "#f0a868"
