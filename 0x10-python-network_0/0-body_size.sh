#!/bin/bash
#Function to send GET request to URL and display body of response
get_response_body(){ url=$1; response=$(curl -s -o /dev/null -w "%{http_code}" $url); [ $response -eq 200 ] && curl -s $url || echo "Error: Non-200 status code received"; }; read -p "Enter the URL: " input_url; get_response_body $input_url
