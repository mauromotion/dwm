#!/bin/bash

# Autostart programs
picom -b &
nitrogen --restore &
udiskie -a -n -t &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
pa-applet &
nm-applet &
nextcloud --background &
openrgb --startminimized &
xset b 100 &
dispwin -d1 "$HOME/.config/i3/color-profiles/icc/Dell_S2721DGF.icm"

sleep 1

dispwin -d2 "$HOME/.config/i3/color-profiles/icc/Dell_U2713HM.icm"
