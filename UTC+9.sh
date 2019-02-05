#!/bin/bash
#UTC+9 4:20 Bot

#Countries in time zone
countries=(
  "Russia"
  "Japan"
  "South Korea"
  "North Korea"
  "Indonesia"
  "East Timor"
  "Palau"
)

RANDOM=$RANDOM

selected_country=${countries[$RANDOM % ${#countries[*]}]}

curl -X POST --data '{ "username": "4:20 Bot", "avatar_url": "BotIconGoesHere.jpg", "content": "Smoke it up for '"$selected_country"' UTC+9" }' -H "Content-Type: application/json"  WebHookURL

