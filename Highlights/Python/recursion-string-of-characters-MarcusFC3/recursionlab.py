#Marcus Jones Jr.
#Ch 13 Lab 1
#Nov. 19, 2024
def main():
    char = "???"
    while len(char) > 1:
        char = input("What character would you like to repeat? ")
        if len(char) > 1:
            print("Please enter one character")
    total_repeats = -1
    while total_repeats < 0:
        try:
            total_repeats = int(input(f"How many {char} 's would you like: "))
            if total_repeats < 0:
                print("Please enter a positive number")
        except ValueError:
            print("Please enter an integer")

    repeated_char_string = repeat_char(char, total_repeats)
    print(repeated_char_string)

def repeat_char(char, num):
    if len(char) == num:
        return char
    else:
        char = char + char[0]
        return repeat_char(char, num)


if __name__ == "__main__":
    main()