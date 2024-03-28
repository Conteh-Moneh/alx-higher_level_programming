#!/bin/bash
# This Bash script takes in a URL, sends a GET request to the URL, and displays the body of the response (only for 200 status code).
curl -s -o /dev/null -w "%{http_code}" "$1" | grep -q 200 && curl -s "$1"
