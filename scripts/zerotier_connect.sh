#!/bin/bash
NETWORK_ID=$1
PASSWORD=$(/home/deck/SDScripts/scripts/deck_login.sh)
echo "Got credentials"
RESPONSE=$(echo $PASSWORD | sudo -S zerotier-cli join $NETWORK_ID)
echo "Process completed"
zenity --info --title "Connection status" --text "Response from $NETWORK_ID: $RESPONSE" --width 300 2>/dev/null
