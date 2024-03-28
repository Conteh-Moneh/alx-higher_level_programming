#!/bin/bash
#Function to send GET request to URL and display body of response
get_response_body(){
	url=$1
	response=$(curl -s -o /dev/null -w "%{http_code}" $url)
	if [$response -eg 200]; then
		curl -s $url
	else
		echo "Error: Non-200 status code received"
	fi
}
#Main script
read -p "Enter the URL: " input_url
get_response_body $input_url

