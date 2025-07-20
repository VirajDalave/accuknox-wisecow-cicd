#!/bin/bash

URL="http://localhost:80" 

# HTTP status code
STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

if [ "$STATUS_CODE" -eq 200 ]; then
  echo "Application is UP (HTTP $STATUS_CODE)"
else
  echo "Application is DOWN or UNHEALTHY (HTTP $STATUS_CODE)"
fi
