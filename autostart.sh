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
