#!/bin/bash

hyprctl --batch keyword general:gaps_in 0
hyprctl --batch keyword general:gaps_out 0
hyprctl --batch keyword general:border_size 1
hyprctl --batch keyword general:col.active_border   "rgb(8aadf4)"
hyprctl --batch keyword general:col.inactive_border   "rgb(24273A)"

hyprctl --batch keyword decoration:rounding 0
