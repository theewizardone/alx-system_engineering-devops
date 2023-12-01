#!/bin/bash
#takes in a URL and displays all HTTP methods the server will accept.

if [ $# -ne 1 ]; then
  echo "www.goggle.com."
  exit 1
fi
url=$1
response=$(curl -X OPTIONS -s $url
if [[ $response == *"Allow:"* ]]; th
  echo "Allowed HTTP methods:"
  echo $allowed_methods
else
  echo "Error: Allow header not found"
  exit 1
fi
