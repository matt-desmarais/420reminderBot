#!/bin/bash
#UTC-6 4:20 Bot

#Countries in time zone
countries=(
  "United States (Central)"
  "Canada (Central)"
  "Mexico (Central)"
  "Belize"
  "Costa Rica"
  "El Salvador"
  "Guatemala"
  "Honduras"
  "Nicaragua"
)

RANDOM=$RANDOM

selected_country=${countries[$RANDOM % ${#countries[*]}]}

curl -X POST --data '{ "username": "4:20 Bot", "avatar_url": "BotIconGoesHere.jpg", "content": "Smoke it up for '"$selected_country"' UTC-6" }' -H "Content-Type: application/json"  WebHookURL

