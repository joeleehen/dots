#!/usr/bin/env sh

CURRENT_WIFI="$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I)"
# SSID="$(echo "$CURRENT_WIFI" | grep -o "SSID: .*" | sed 's/^SSID: //')"
# SSID="$(sudo wdutil info | grep -o '    SSID                 : ' | sed 's/    SSID                 : //')"
SSID="$(networksetup -listallhardwareports | awk '/Wi-Fi/{getline; print $2}' | xargs networksetup -getairportnetwork | sed "s/Current Wi-Fi Network: //")"
# CURR_TX="$(echo "$CURRENT_WIFI" | grep -o "lastTxRate: .*" | sed 's/^lastTxRate: //')"
# CURR_TX="$(sudo wdutil info | grep "    Tx Rate              : " | sed 's/    Tx Rate              : //')"

if [ "$SSID" = "" ]; then
	sketchybar --set $NAME label="Disconnected" icon=󰖪
else
	sketchybar --set $NAME label="${SSID}" icon=󰖩
fi
