def main():
    FILENAME = input("Enter the name of the file you wish to process: ")

    try:
        total_words, capitalized_words = check_file_word_total(FILENAME)
        print(f"The file {FILENAME} contains {total_words} words of which {capitalized_words} of them are capitalized")

    except FileNotFoundError as notfound:
        print(f"The file {FILENAME} was not found \n {notfound}")

    except IOError as ioerr:
        print(f"IO error \n {ioerr}")

def check_file_word_total(FILENAME):
    total_words = 0
    capitalized_words = 0
    with open(FILENAME, "r") as PROCESSED_FILE:
        for line in PROCESSED_FILE:
            word_list = line.rstrip('\n').split(" ")
            for word in word_list:
                # Gets rid of special characters that may interfere with alphanumeric test
                word = word.strip('.,\'')
                word = word.replace("-", "")
                if word.isalnum():
                    total_words += 1
                    if word[0].isupper():
                        capitalized_words += 1

    return total_words, capitalized_words

if __name__ == "__main__":
    main()