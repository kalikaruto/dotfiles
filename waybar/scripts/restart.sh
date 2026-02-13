#!/bin/sh
pkill waybar
sleep 0.2
waybar >/dev/null 2>&1 &

