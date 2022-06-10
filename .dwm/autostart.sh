#!/usr/bin/env bash 

picom &
if (( $(date '+%d') % 2 == 0))
then
	feh ~/.config/wallpapers/dark2.jpg --bg-scale
else
	feh ~/.config/wallpapers/dark1.jpg --bg-scale
fi
xinput set-prop "SynPS/2 Synaptics TouchPad" libinput\ Tapping\ Enabled 1
dwmblocks &
ibus-daemon -drxR
