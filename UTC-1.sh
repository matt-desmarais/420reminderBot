#!/bin/bash
#UTC-1 4:20 Bot

#Countries in time zone
countries=(
  "Greenland"
  "The Azores"
  "Cape Verde"
)

RANDOM=$RANDOM

selected_country=${countries[$RANDOM % ${#countries[*]}]}

curl -X POST --data '{ "username": "4:20 Bot", "avatar_url": "BotIconGoesHere.jpg", "content": "Smoke it up for '"$selected_country"' UTC-1" }' -H "Content-Type: application/json"  WebHookURL

