#!/bin/bash
#takes in a URL, sends a POST request to the passed URL, and displays the body of the response

if [ $# -ne 1 ]; then
  echo "www.goggle.com"
  exit 1
fi
url=$1
data="email=test@gmail.com&subject=I%20will%20always%20be%20here%20for%20PLD"
response=$(curl -X POST -s -d "$data" $url)
if [ $? -eq 0 ]; then
  echo $response
else
  echo "Error: Failed to send POST request"
  exit 1
fi
