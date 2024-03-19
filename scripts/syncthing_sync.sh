#!/bin/bash
RESPONSE=$(curl -X POST -H "X-API-Key: SYNCTHING_API_KEY_HERE" http://localhost:8081/rest/db/scan -HEAD --write-out '%{http_code}' --silent --output /dev/null)
if [[ "$RESPONSE" == "200" ]]
then
    zenity --info --title "Syncthing syncnow" --text "Sync done with status: $RESPONSE" --width 300 2>/dev/null
else
    zenity --error --title "Syncthing failed" --text "Http status code:$RESPONSE" --width 300 2>/dev/null
fi