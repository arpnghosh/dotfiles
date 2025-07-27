#!/bin/bash

# Rofi menu for screenshot options
choice=$(echo -e "Region\nWindow\nMonitor\nRegion to Clipboard" | rofi -dmenu -p "Screenshot Option:")

case $choice in
    "Region")
        hyprshot -m region
        ;;
    "Window")
        hyprshot -m window
        ;;
    "Monitor")
        hyprshot -m output
        ;;
    "Region to Clipboard")
        hyprshot -m region --clipboard-only
        ;;
    *)
        echo "Cancelled"
        ;;
esac
