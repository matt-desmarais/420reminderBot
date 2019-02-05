#!/bin/bash
#UTC+1 4:20 Bot

#Countries in time zone
countries=(
  "Albania"
  "Andorra"
  "Austria"
  "Belgium"
  "Bosnia and Herzegovina"
  "Croatia"
  "Czech Republic"
  "Denmark, except"
  "Faroe Islands"
  "Greenland"
  "France"
  "Germany"
  "Hungary"
  "Italy"
  "Liechtenstein"
  "Luxembourg"
  "Macedonia"
  "Malta"
  "Monaco"
  "Montenegro"
  "Netherlands"
  "Norway"
  "Poland"
  "Serbia"
  "Kosovo"
  "Slovakia"
  "Slovenia"
  "Spain"
  "Sweden"
  "Switzerland"
  "Vatican City"
)

RANDOM=$RANDOM

selected_country=${countries[$RANDOM % ${#countries[*]}]}

curl -X POST --data '{ "username": "4:20 Bot", "avatar_url": "BotIconGoesHere.jpg", "content": "Smoke it up for '"$selected_country"' UTC+1" }' -H "Content-Type: application/json"  WebHookURL

