#!/bin/bash

options="⏻ Shutdown\n⏾ Suspend\n🔄 Reboot\n⚡ Hibernate\n🔒 Lock Screen\n🚪 Logout"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "Power Menu" \
    -theme-str 'listview {lines: 6;}')

case $chosen in
    "⏻ Shutdown")
        systemctl poweroff
        ;;
    "⏾ Suspend")
        systemctl suspend
        ;;
    "🔄 Reboot")
        systemctl reboot
        ;;
    "⚡ Hibernate")
        systemctl hibernate
        ;;
    "🔒 Lock Screen")
        hyprlock
        ;;
    "🚪 Logout")
        hyprctl dispatch exit
        ;;
    *)
        exit 0
        ;;
esac
