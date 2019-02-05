#!/bin/bash
#UTC-5 4:20 Bot

#Countries in time zone
countries=(
  "United States (Eastern)"
  "Canada (Eastern)"
  "Mexico (Eastern)"
  "Panama"
  "Cayman Islands"
  "Jamaica"
)

RANDOM=$RANDOM

selected_country=${countries[$RANDOM % ${#countries[*]}]}

curl -X POST --data '{ "username": "4:20 Bot", "avatar_url": "BotIconGoesHere.jpg", "content": "Smoke it up for '"$selected_country"' UTC-5" }' -H "Content-Type: application/json"  WebHookURL

