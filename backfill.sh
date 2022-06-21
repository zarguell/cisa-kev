#!/bin/bash

#start date
d=2021-11-01

#get the kevs
curl --silent --output cisa-kev-latest.json https://www.cisa.gov/sites/default/files/feeds/known_exploited_vulnerabilities.json

# increment until date
while [ "$d" != 2022-06-23 ]; do 
  echo $d
  d=$(date -I -d "$d + 1 day")

#backfill the dues and the news
  cat cisa-kev-latest.json | jq --arg d "$d" '.vulnerabilities[] | select(.dueDate==$d)' | jq -s . - > vulns-due/$d-cisa-kev-due.json
  cat cisa-kev-latest.json | jq --arg d "$d" '.vulnerabilities[] |  select(.dateAdded==$d)' | jq -s . - > vulns-added/$d-cisa-kev-new.json

done

#clean empties
find ./vulns-* -type f -size -4c -delete
