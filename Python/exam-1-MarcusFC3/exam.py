# greet the user
print("Welcome to the multiplication table generator!\n")

# ask the user for a number to use to generate the results
# store it as an appropriately typed variable
number_in_use = int(input("Please enter the number to use in generating the multiplication table: "))

# print the heading for the results
print(f"Multiples of {number_in_use}")

# create a for loop to count from 1 to 12.
# Use the loop variable and the user number to print each line using an f-string
for num in range(12):
    print(f"{number_in_use} x {num + 1} = {number_in_use * (num + 1)}")

