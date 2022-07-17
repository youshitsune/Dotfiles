#!/usr/bin/env bash 

picom &
feh /home/luka/.config/wallpapers/01.jpg --bg-scale
xinput set-prop "SynPS/2 Synaptics TouchPad" libinput\ Tapping\ Enabled 1
dwmblocks &
ibus-daemon -drxR
mailspring -b
