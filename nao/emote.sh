#!/bin/bash
FEEDBACK_COUNTER=0
SUGG_COUNTER=0
FEEDBACK=(
    "Nice Job!"
    "I think you could do better"
    "Nice Try"
    "Oops! Maybe next time!"
    "Good effort"
    "Not quite"
    "That was good!"
    "Good Job!"
    "There was probably a better place you could have put that"
)
DIAG_ONE=(
    "Try the first piece"
    "Try the second piece"
    "Try the third piece"  
)
DIAG_TWO=(
    "How about the first one"
    "How about the second one"
    "How about the third one"
)
DIAG_THREE=(
    "I think the first will work"
    "I think the second will work"
    "I think the third will work"
)
DIAG_FOUR=(
    "The first piece is good"
    "The second piece is good"
    "The third piece is good"
)
DIAG_FIVE=(
    "Consider the first piece"
    "Consider the second piece"
    "Consider the third piece"
)
DIAG_SIX=(
    "What about the first one"
    "What about the second one"
    "What about the third one"
)
DIAG_SEVEN=(
    "Let's play the first one"
    "Let's play the second one"
    "Let's play the third one"
)
DIAG_EIGHT=(
    "Maybe the first piece will work"
    "Maybe the second piece will work"
    "Maybe the third piece will work"
)
DIAG_NINE=(
    "The first is good to use"
    "The second is good to use"
    "The third is good to use"
)
SUGGESTIONS=(
    DIAG_ONE,
    $DIAG_TWO,
    $DIAG_THREE,
    $DIAG_FOUR,
    $DIAG_FIVE,
    $DIAG_SIX,
    $DIAG_SEVEN,
    $DIAG_SEVEN,
    $DIAG_EIGHT,
    $DIAG_NINE
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
        if [ $SUGG_COUNTER -eq 10 ]
        then
            let "SUGG_COUNTER = 0"
        fi
        echo ${SUGGESTIONS["$SUGG_COUNTER"]}
        echo $SUGG_COUNTER
        let "SUGG_COUNTER = SUGG_COUNTER + 1"
    elif [ $prompt == "F" ]
    then
        if [ $FEEDBACK_COUNTER -eq 10 ]
        then
            let "FEEDBACK_COUNTER = 0"
        fi
        say ${FEEDBACK["$FEEDBACK_COUNTER"]}
        let "FEEDBACK_COUNTER = FEEDBACK_COUNTER + 1"
    else
        echo "ENTER EITHER S OR F \n"
    fi
done