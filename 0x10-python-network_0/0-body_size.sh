#!/bin/bash
# This script takes a URL as input, sends a silent request to that URL using curl, and displays the size of the response body in bytes
curl -sI "$1" | grep -i Content-Length | awk '{print $2}'
