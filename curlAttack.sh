#!/bin/sh
# curlAttack.sh
# A simple script to hit a server endpoint, intended for legitimate load testing.

# The URL should be an argument to the script or hardcoded for your own use case
URL=$1

# Simple loop to hit the server with curl
while true
do
  curl -s "${URL}" > /dev/null
  echo "Hit ${URL} with curl"
  sleep 1 # Pause between hits to prevent overwhelming the server
done
