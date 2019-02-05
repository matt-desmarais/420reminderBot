#!/bin/bash
#UTC+12 4:20 Bot

#Countries in time zone
countries=(
  "Russia"
  "Wake Island"
  "Marshall Islands"
  "Kiribati"
  "Nauru"
  "Tuvalu"
)

RANDOM=$RANDOM

selected_country=${countries[$RANDOM % ${#countries[*]}]}

curl -X POST --data '{ "username": "4:20 Bot", "avatar_url": "BotIconGoesHere.jpg", "content": "Smoke it up for '"$selected_country"' UTC+12" }' -H "Content-Type: application/json"  WebHookURL

