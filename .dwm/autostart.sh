#!/usr/bin/env bash 

picom &
feh /home/luka/.config/wallpapers/01.png --bg-scale
dwmblocks &
xinput set-prop "SynPS/2 Synaptics TouchPad" libinput\ Tapping\ Enabled 1
ibus-daemon -drxR
xset -dpms
xset s off
syncthing --no-browser &
