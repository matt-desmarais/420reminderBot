#!/bin/bash
#UTC-10 4:20 Bot

#Countries in time zone
countries=(
  "United States (Hawaii)"
  "Cook Island"
  "Tahiti"
)

RANDOM=$RANDOM

selected_country=${countries[$RANDOM % ${#countries[*]}]}

curl -X POST --data '{ "username": "4:20 Bot", "avatar_url": "BotIconGoesHere.jpg", "content": "Smoke it up for '"$selected_country"' UTC-10" }' -H "Content-Type: application/json"  WebHookURL

