#!/usr/bin/python
from naoqi import ALProxy
import random
#125.142
FEEDBACK=[
    "Nice Job!",
    "I think you could do better",
    "Nice Try",
    "Oops! Maybe next time!",
    "Good effort",
    "Not quite",
    "That was good!",
    "Good Job!",
    "There was probably a better place you could have put that"
]
SUGGESTIONS=[
    [
        "Try the first piece",
        "Try the second piece",
        "Try the third piece"  
    ],[
        "How about the first one",
        "How about the second one",
        "How about the third one"
    ],[
        "I think the first will work",
        "I think the second will work",
        "I think the third will work"
    ],[
        "The first piece is good",
        "The second piece is good",
        "The third piece is good"
    ],[
        "Consider the first piece",
        "Consider the second piece",
        "Consider the third piece"
    ],[
        "What about the first one",
        "What about the second one",
        "What about the third one"
    ],[
        "Let's play the first one",
        "Let's play the second one",
        "Let's play the third one"
    ],
    [
        "Maybe the first piece will work",
        "Maybe the second piece will work",
        "Maybe the third piece will work"
    ],[
        "The first is good to use",
        "The second is good to use",
        "The third is good to use"
    ]
]

def main():
    tts = ALProxy("ALTextToSpeech", "nao.local", 9559)
    sugg_counter = 0
    feed_counter = 0
    while(True):
        prompt = raw_input("S, F, or G: ")
        
        if prompt == "G":
            tts.say("Hi, I am Nao. Nice to meet you. Let's play a game together. Are you ready?")
            tts.say("Let's Go!")
        elif prompt == "S":
            if sugg_counter == 9:
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
            print "ENTER S OR F"

if __name__ == "__main__":
    main()