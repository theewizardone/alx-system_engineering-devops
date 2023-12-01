#!/bin/bash

# Check if the URL was provided
if [ $# -ne 1 ]; then
  echo "www.goggle.com"
  exit 1
fi

# Get the URL from the argument
url=$1

# Send a GET request to the URL and capture the response
response=$(curl -s -o /dev/null -w '%{http_code}' $url)

# Check if the response was successful
if [ $response -eq 200 ]; then
  # Get the body of the response
  body=$(curl -s $url)

  # Display the body of the response
  echo $body
else
  echo "Error: Status code $response"
  exit 1
fi
