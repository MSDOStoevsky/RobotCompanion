#!/usr/bin/python

import Tkinter
import tkMessageBox

def main():
    top = Tkinter.Tk()


    B = Tkinter.Button(top, text ="Hello", command = helloCallBack)

    B.pack()
    top.mainloop()

def helloCallBack():
    tkMessageBox.showinfo( "Hello Python", "Hello World")

if __name__ == "__main__":
    main()