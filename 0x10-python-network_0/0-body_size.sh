#!/bin/bash
#takes in a URL, sends a request to that URL, and displays the size of the body of the response


if [ $# -ne 1 ]; then
  echo "www.goggle.com."
  exit 1
fi
url=$1
response=$(curl -s -I $url | grep -i Content-Length | awk '{print $2}')
if [ -z "$response" ]; then
  echo "Error: Content-Length header not found"
  exit 1
fi
echo "Response body size: $response bytes"
