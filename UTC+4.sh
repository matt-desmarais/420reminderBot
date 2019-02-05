#!/bin/bash
#UTC+4 4:20 Bot

#Countries in time zone
countries=(
  "Russia"
  "Armenia"
  "Azerbaijan"
  "Georgia"
  "Oman"
  "United Arab Emirates"
  "Mauritius"
  "Seychelles"
)

RANDOM=$RANDOM

selected_country=${countries[$RANDOM % ${#countries[*]}]}

curl -X POST --data '{ "username": "4:20 Bot", "avatar_url": "BotIconGoesHere.jpg", "content": "Smoke it up for '"$selected_country"' UTC+4" }' -H "Content-Type: application/json"  WebHookURL

