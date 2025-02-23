#!/bin/bash

battery_status=$(acpi -b)

battery_percent=$(echo $battery_status | grep -P -o '[0-9]+(?=%)')

if echo "$battery_status" | grep "Discharging"; then
    dunstify -u normal "Battery Status" "Battery is: $battery_percent%"
elif [ $battery_percent -le 20 ]; then
    dunstify -u critical "Battery Status" "Battery is low: $battery_percent%"
else
    dunstify -u normal "Battery Status" "Battery is charging: $battery_percent%"
fi
