
#!/bin/zsh
MAIN="DP-0"
MONITOR="DP-2"

# Check if the laptop screen is currently active
if xrandr --listactivemonitors | grep -q "$MAIN"; then
	xrandr --output "$MAIN" --off --output "$MONITOR" --auto
else
	xrandr --output "$MAIN" --auto --right-of "$MONITOR" --output "$MONITOR" --auto --primary
fi
