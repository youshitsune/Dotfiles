#!/usr/bin/env bash 

picom &
feh /home/luka/.config/wallpapers/01.png --bg-scale
slstatus &
xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Tap Action" 1 1 1 2 1 3
ibus-daemon -drxR
xset -dpms
xset s off
nmcli d down ipv6leakintrf0
nextcloud 
xautolock -time 10 -locker slock
