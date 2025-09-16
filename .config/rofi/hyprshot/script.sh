#!/bin/bash

hyprshotSave="$HOME/Pictures/Screenshots/"
rofiConfig="$HOME/.config/rofi/themes"

options="Clipboard\nRegion\nWindow\nMonitor"
choice=$(echo -e "$options" | rofi -dmenu -i -p "Screenshot Option:" \
-theme-str 'listview {lines: 6;}')

case $choice in
    "Region")
        hyprshot -m region -o $hyprshotSave
        ;;
    "Window")
        hyprshot -m window -o $hyprshotSave
        ;;
    "Monitor")
        hyprshot -m output -o $hyprshotSave
        ;;
    "Clipboard")
        hyprshot -m region --clipboard-only
        ;;
    *)
        echo "Cancelled"
        ;;
esac
