# !/bin/bash

# Set the API key
API_KEY='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'

# Get the prompt from the first argument
# prompt=$1

# Make the curl call and save the output to a variable
response=$(curl https://api.openai.com/v1/completions \
  -H 'Content-Type: application/json' \
  -H "Authorization: Bearer $API_KEY" \
  -d '{
  "model": "text-davinci-002",
  "prompt": "how old are you"
}')

# Use jq to extract the "text" field from the response
text=$(echo "$response" | jq -c '.choices[0].text')

# Print the "text" field
echo "$text"

