#!/bin/bash
#UTC+0 4:20 Bot

#Countries in time zone
countries=(
  "Ireland"
  "Portugal"
  "United Kingdom"
  "Canary Islands"
)


RANDOM=$RANDOM

selected_country=${countries[$RANDOM % ${#countries[*]}]}

curl -X POST --data '{ "username": "4:20 Bot", "avatar_url": "BotIconGoesHere.jpg", "content": "Smoke it up for '"$selected_country"' UTC+0" }' -H "Content-Type: application/json"  WebHookURL
