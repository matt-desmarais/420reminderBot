#!/bin/bash
#UTC-4 4:20 Bot

#Countries in time zone
countries=(
  "Canada (Atlanic)"
  "Bermuda"
  "Anguilla"
  "Antigua and Barbuda"
  "Aruba"
  "Barbados"
  "British Virgin Islands"
  "Curaçao"
  "Dominica"
  "Dominican Republic"
  "Grenada"
  "Guadeloupe"
  "Martinique"
  "Montserrat"
  "Puerto Rico"
  "Saint Barthélemy"
  "Saint Kitts and Nevis"
  "Saint Lucia"
  "Saint Vincent and Grenadines"
  "Trinidad and Tobago"
  "Turks and Caicos Islands"
  "US Virgin Islands"
)

RANDOM=$RANDOM

selected_country=${countries[$RANDOM % ${#countries[*]}]}

curl -X POST --data '{ "username": "4:20 Bot", "avatar_url": "BotIconGoesHere.jpg", "content": "Smoke it up for '"$selected_country"' UTC-4" }' -H "Content-Type: application/json"  WebHookURL

