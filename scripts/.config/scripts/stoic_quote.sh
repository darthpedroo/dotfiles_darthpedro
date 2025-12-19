#!/bin/bash

maxCharacters=100
currentCharacters=100000000
endpoint="https://stoic-quotes.com/api/quote"

while [ $currentCharacters -gt $maxCharacters ]
do
        quote=$(curl -s $endpoint | jq -r '.text')
        currentCharacters=${#quote}
done      

echo $quote
