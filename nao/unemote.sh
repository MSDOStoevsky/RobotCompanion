#!/bin/bash

SUCCESS=("Success" "Ok" "Acceptable")
FAILURE=("Unsuccessful" "No")
SUGGESTIONS=("")

function dialogue_option(){
    arr=("${!1}")
    say ${arr["$[RANDOM % ${#arr[@]}]"]} 
}

while true
do
    read -p "Choose an option (1 - 3) " prompt
    
    if [ $prompt == "stop" ]
    then
        break
    elif [ $prompt == "Y" ]
    then
        dialogue_option "SUCCESS[@]"
    elif [ $prompt == "N" ]
    then
        dialogue_option "FAILURE[@]"
    elif [ $prompt == "1" ]
    then
        say "One"
    elif [ $prompt == "2" ]
    then
        say "Two"
    elif [ $prompt == "3" ]
    then
        say "Three"
    else
        echo "Input must be 1 - 3"
    fi
done