
#!/usr/bin/env bash

options="Lock Screen
Logout
Reboot
Shutdown"

chosen=$(printf "%s\n" "$options" | rofi -dmenu -i -p "Power Menu" \
    -theme-str 'listview { lines: 4; }')

case "$chosen" in
    "Lock Screen")
        # dms ipc call lock lock
        ;;
    "Logout")
        hyprctl dispatch exit
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Shutdown")
        systemctl poweroff
        ;;
    *)
        exit 0
        ;;
esac

