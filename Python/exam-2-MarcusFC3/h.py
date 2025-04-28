def main():
    print('Vowel and Consonants Counter\n')
    string_to_process = input('Enter any phrase: ')
    print('The phrase "', string_to_process, '" contains ',
        find_vowels(string_to_process),
        ' vowels and ', find_consonants(string_to_process),
        ' consonants.', sep = '')

def find_vowels(phrase):
    vowels = 0
    for letter in phrase:
        if letter.lower() in ('a','e','i','o','u'): #Added e in the tuple of vowels
            vowels += 1 #Changed to vowels += 1 instead of vowels = 1
    return vowels

def find_consonants(phrase): #added colon
    consonants = 0
    vowels = "aeiou"
    for letter in phrase:
        if letter.isalpha(): #Changed from isalnum() to isalpha()
            if letter.lower() not in vowels:
                consonants += 1
    return consonants

main()
