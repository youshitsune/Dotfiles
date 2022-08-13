#!/usr/bin/env bash 

picom &
feh /home/luka/.config/wallpapers/01.png --bg-scale
xinput set-prop "SynPS/2 Synaptics TouchPad" libinput\ Tapping\ Enabled 1
ibus-daemon -drxR
dwmblocks &
xset -dpms
xset s off
discord
