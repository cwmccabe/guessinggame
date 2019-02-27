#!/usr/bin/env bash

numfiles=$(ls | wc -l)

function q_and_a {

  echo "How many files are in the current directory?"
  echo "Enter your response:"
  read -r response

  re='^[0-9]+([.][0-9]+)?$'

  if [[ $response =~ $re ]]; then
    if [[ ${response} -eq $numfiles ]]; then
      cont=0
    elif [[ ${response} -gt $numfiles ]]; then
      echo "Sorry, your guess is too high."
    elif [[ ${response} -lt $numfiles ]]; then
      echo "Sorry, your guess is too low."
    fi
  else
    echo "Sorry, try again"
  fi
}

cont=1
while [[ $cont -eq 1 ]]; do

  q_and_a

done

echo "Congratulations! You guessed correctly."
    
