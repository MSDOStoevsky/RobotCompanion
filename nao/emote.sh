#!/bin/bash

SUCCESS=("Nice Job!" "That was good!" "Good job!")
FAILURE=("Oops! Maybe next time!" "Nice try" "Not quite" "well... ok")
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
        say "Try the first piece"
    elif [ $prompt == "2" ]
    then
        say "How about the second one"
    elif [ $prompt == "3" ]
    then
        say "Maybe the third piece will work"
    else
        echo "Input must be 1 - 3, Y, or N"
    fi
done