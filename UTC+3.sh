#!/bin/bash
#UTC+3 4:20 Bot

#Countries in time zone
countries=(
  "Bahrain"
  "Iraq"
  "Kuwait"
  "Qatar"
  "Saudi Arabia"
  "Yemen"
  "Comoros"
  "Djibouti"
  "Eritrea"
  "Ethiopia"
  "Kenya"
  "Madagascar"
  "Somalia"
  "South Sudan"
  "Tanzania"
  "Uganda"
)

RANDOM=$RANDOM

selected_country=${countries[$RANDOM % ${#countries[*]}]}

curl -X POST --data '{ "username": "4:20 Bot", "avatar_url": "BotIconGoesHere.jpg", "content": "Smoke it up for '"$selected_country"' UTC+3" }' -H "Content-Type: application/json"  WebHookURL

