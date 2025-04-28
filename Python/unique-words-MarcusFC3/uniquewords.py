#Marcus Jones Jr.
#Chapter 12 Lab 2
import os.path as os

def main():
    print("Unique Word Counter")

    file_name = input("Enter the name of the file you wish to process: ")
    while file_name.lower() != "exit":
        if os.exists(file_name): #Checks for the file before opening it inside function
            unique_words_set = set_from_file(file_name)
            print(unique_words_set)
            print(f"There are {len(unique_words_set)} unique words in {file_name}")
            file_name = "exit"
        else:
            print(f"The file \"{file_name}\" could not be found!")
            file_name = input("Enter the name of the file you wish to process or type \"exit\" to quit: ")
    print("Thanks for using the program!")

def set_from_file(file_name):
    try:
        with open(file_name, "r") as file:
            unique_words = set()
            for word in file.read().split():
                word = word.strip("\n.,'")
                if word.isalpha():
                    unique_words.add(word)
            return unique_words

    except IOError:
        print("An IO Error occurred")
        return {"Error"}

if __name__ == "__main__":
    main()