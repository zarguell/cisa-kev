#!/bin/bash

#start date
d=2021-11-01

#get the kevs
kevs=$(curl -s 'https://www.cisa.gov/sites/default/files/feeds/known_exploited_vulnerabilities.json')

# increment until date
while [ "$d" != 2022-06-23 ]; do 
  echo $d
  d=$(date -I -d "$d + 1 day")

#backfill the dues and the news
  echo "$kevs" | jq -r --arg d "$d" '.vulnerabilities[] | select(.dueDate==$d)' > vulns-due/$d-cisa-kev-due.json
  echo "$kevs" | jq -r --arg d "$d" '.vulnerabilities[] |  select(.dateAdded==$d)' > vulns-added/$d-cisa-kev-new.json

done

#clean empties
find ./ -size 0 -print -delete