#!/bin/bash
echo "Pipeline"
# Check if a URL argument is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

url="$1"

# Use curl to make an HTTP GET request and store the status code in a variable
status_code=$(curl -Is -o /dev/null -w "%{http_code}" "$url")

# Check if the status code is not 200 (OK)
if [ "$status_code" != "200" ]; then
  echo "The URL $url is not working. Status code: $status_code"
else
  echo "The URL $url is working fine. Status code: $status_code"
fi
