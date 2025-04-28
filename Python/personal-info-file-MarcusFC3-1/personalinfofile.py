#Marcus Jones Jr.
#Ch 8 Lab 1
def main():
    file_name = input("What is the name of the file you wish to work with? ")
    operation_type = '?'
    while operation_type != 'r' and operation_type != 'w':
        operation_type = input("Are you going to (r)ead the file or (w)rite the file? ")
        if operation_type != 'r' and operation_type != 'w':
            print("Invalid Input. Please type \"w\" or \"r\"")
    if operation_type == 'r':
        try:
            #"with as" statement opens a resource(our file) and closes it once it ends
            with open(file_name + ".txt", 'r') as reading_file:
                print("The contents of the file are: \n")
                for line in reading_file:
                    print(line.rstrip('\n'))
        except IOError:
            print("IO error")


    if operation_type == 'w':
        try:
            #open file to write to
            writing_file = open(file_name +".txt", 'w')
            #process file
            writing_file.write(input("Enter the first name: ")+ " ")
            writing_file.write(input("Enter the last name: ")+ "\n")
            writing_file.write(input("Enter the street address: ") + "\n")
            writing_file.write(input("Enter the city: ")+", ")
            writing_file.write(input("Enter the state: " )+" ")
            writing_file.write(input("Enter the zip code: ") )
            #close file to write to
            writing_file.close()
        except IOError:
            print("IO error")

if __name__ == '__main__':
    main()