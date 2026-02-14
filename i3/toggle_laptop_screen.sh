#!/bin/zsh
MAIN="DP-0"
MONITOR="DP-2"

if xrandr --listactivemonitors | grep -q "$MAIN"; then
	MAIN_STATE="off"
else
	MAIN_STATE="auto"
fi

xrandr --output "$MAIN" "--$MAIN_STATE" --output "$MONITOR" --off
