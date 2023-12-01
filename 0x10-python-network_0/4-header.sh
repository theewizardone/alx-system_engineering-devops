#!/bin/bash
#takes in a URL as an argument, sends a GET request to the URL, and displays the body of the response

if [ $# -ne 1 ]; then
  echo "www.goggle.com"
  exit 1
fi
url=$1
response=$(curl -s -H "X-School-User-Id: 98" $url
if [ $? -eq 0 ]; then
  echo $response
else
  echo "Error: Failed to send GET request"
  exit 1
fi
