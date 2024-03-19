#!/bin/bash
NETWORK_ID=$1
PASSWORD=$(/home/deck/SDScripts/scripts/deck_login.sh)
echo "Got credentials"
RESPONSE=$(echo $PASSWORD | sudo -S zerotier-cli leave $NETWORK_ID)
echo "Process completed"
zenity --info --title "Disconnection status" --text "Leaving: $NETWORK_ID Response: $RESPONSE" --width 300 2>/dev/null
