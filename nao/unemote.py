#!/usr/bin/python
from naoqi import ALProxy
import random
#125.142
FEEDBACK=[
    "Success",
    "Complete",
    "Fine",
    "Ok",
    "Fail",
    "Unsuccessful",
    "Good",
    "Goal acheived"
    "No",
]
SUGGESTIONS=[
    [
        "first piece",
        "second piece",
        "third piece"
    ],[
        "first",
        "second",
        "third"
    ],[
        "Choose the first",
        "Choose the second",
        "Choose the third",
    ],[
        "Select the first",
        "Select the second",
        "Select the third"
    ],[
        "Place the first piece",
        "Place the second piece",
        "Place the third piece"
    ]
]

def main():
    tts = ALProxy("ALTextToSpeech", "nao.local", 9559)
    sugg_counter = 0
    feed_counter = 0
    while(True):
        prompt = raw_input("S, F, or G: ")
        
        if prompt == "G":
            tts.say("Greetings, my name is Nao. We will begin.")
        elif prompt == "S":
            if sugg_counter == 5:
                sugg_counter = 0
            select = random.choice(SUGGESTIONS[sugg_counter])
            print select
            tts.say(select)
            sugg_counter += 1
        elif prompt == "F":
            if feed_counter == 9:
                feed_counter = 0
            print FEEDBACK[feed_counter]
            tts.say(FEEDBACK[feed_counter])
            feed_counter += 1
        else:
            print "ENTER S, F, or G"

if __name__ == "__main__":
    main()