#!/bin/bash

# Kill already existing processes to avoid duplication
processes=(
	"dwmblocks"
	"picom"
	"udiskie"
	"polkit-gnome-au"
	"pa-applet"
	"nm-applet"
	"nextcloud"
	"openrgb"
)

for proc in "${processes[@]}"; do
	pids=$(pgrep "$proc")

	if [ -n "$pids" ]; then
		kill $pids
	fi
done

# Autostart programs
dwmblocks &
picom -b &
nitrogen --restore &
udiskie -a -n -t &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
pa-applet &
nm-applet &
nextcloud --background &
openrgb --startminimized &
xset b 100 &

# Load color profiles for my desktop monitors
dispwin -d1 "$HOME/.config/i3/color-profiles/icc/Dell_S2721DGF.icm"

sleep 1

dispwin -d2 "$HOME/.config/i3/color-profiles/icc/Dell_U2713HM.icm"
