#!/bin/bash
#UTC-2 4:20 Bot

#Countries in time zone
countries=(
  "Greenland"
  "Brazil"
)

RANDOM=$RANDOM

selected_country=${countries[$RANDOM % ${#countries[*]}]}

curl -X POST --data '{ "username": "4:20 Bot", "avatar_url": "BotIconGoesHere.jpg", "content": "Smoke it up for '"$selected_country"' UTC-2" }' -H "Content-Type: application/json"  WebHookURL

