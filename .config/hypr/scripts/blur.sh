#!/bin/bash

hyprctl --batch keyword general:gaps_in 10
hyprctl --batch keyword general:gaps_out 15

hyprctl --batch keyword general:border_size 0
hyprctl --batch keyword decoration:rounding 0

hyprctl --batch keyword decoration:active_opacity 1.0
hyprctl --batch keyword decoration:inactive_opacity 0.70
