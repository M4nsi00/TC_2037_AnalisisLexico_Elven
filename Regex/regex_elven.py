"""
Author: Sebastian Mansilla Cots
Date: 11/03/2026
Project: Lexical Analysis Implementation (Elven language)
Purpose of the project: Lexical analysis parser that uses a regular expression
to detect specific words of the elven language.
"""

import re

def parse(inputs):
    words_lists = inputs.split(",")
    return words_lists

def accept(test_list):
    words_lists = parse(test_list)
    expression = r'^(c(or(on|marë)|(raban)|(ú)|(uivie)))$'

    for i in range (len(words_lists)):
        word = words_lists[i]
        if re.match(expression,word):
            print("The string: ", word ," is part of the elven language")
            return True
        else:
            print("The string: ", word ," isn't part of the elven language")
            return False

def main():
    while True:
        test_list = input("Enter a word to see if it is part of the elven language: ")
        if not test_list:
            print("Empty word, obviously not part of the elven language")
            return False
        
        accept(test_list)

if __name__ == '__main__':
    main()