#!/bin/bash
let FEEDBACK_COUNTER=0
FEEDBACK=(
    "Success"
    "Complete"
    "Fine"
    "Ok"
    "Fail"
    "No"
    "Unsuccessful"
    "Good"
    "Goal acheived"
)
SUGGESTIONS=(
    "first piece"
    "first"
    "Choose the first"
    "Select the first"
    "Place the first piece"

    "second piece"
    "second"
    "Choose the second"
    "Select the second"
    "Place the second piece"

    "third piece"
    "third"
    "Choose the third"
    "Select the third"
    "Place the third piece"
)

function dialogue_option(){
    arr=("${!1}")
    choice=${arr["$[RANDOM % ${#arr[@]}]"]}
    echo $choice
    say $choice
}

while true
do
    read -p "S or F" prompt
    
    if [ $prompt == "stop" ]
    then
        break
    elif [ $prompt == "S" ]
    then
        dialogue_option "SUGGESTIONS[@]"
    elif [ $prompt == "F" ]
    then
        if [ $FEEDBACK_COUNTER -eq 9 ]
        then
            let "FEEDBACK_COUNTER = 0"
        fi
        say ${FEEDBACK["$FEEDBACK_COUNTER"]}
        let "FEEDBACK_COUNTER = FEEDBACK_COUNTER + 1"
    else
        echo "ENTER EITHER S OR F \n"
    fi
done