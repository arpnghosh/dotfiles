#!/bin/bash

volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)

dunstify -u normal "Volume" "$volume"
