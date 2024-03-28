#!/bin/bash
# This script takes a URL as input, sends a GET request to the URL using curl, and displays the body of the response if the status code is 200
curl -s -o response.txt -w "%{http_code}" "$1" | awk 'NR==1 && $0=="200" {getline; print}'
