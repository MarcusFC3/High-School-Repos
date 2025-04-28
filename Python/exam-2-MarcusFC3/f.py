import random

# Function to write random values
def generate_random():
	file = open('data.txt', 'w')
	number = int(input('\nHow many random numbers do you want? '))
	for num in range(number):
		random_value = random.randint(1, 100)
		print('Writing', random_value, 'to the file.')
		random_value = str(random_value)
		file.write(random_value + '\n')
	file.close() #Moved file.close() out of the for loop

# Function to write random values
def retrieve_random():		
	try:
		file = open('data.txt', 'r')
		current_random = file.readline()
		while current_random != "":#Added empty string after != to fix syntax error
			current_random = current_random.rstrip('\n')
			print('Read', current_random, 'from the file.')
			current_random = file.readline() #Assigned the value of the next file line to current_random to iterate through the file
		file.close()
	except FileNotFoundError as err:
		print('No random numbers exist try (g)enerating them first!')
	
print('*** Random number generation and retrieval ***')

go_on = 'y'
while go_on == 'y' or go_on == 'Y': #removed parenthesis
	action = input('\nWould you like to (g)enerate or (r)etrieve random numbers? ')
	if action == 'g':
		generate_random()
	elif action == 'r':
		retrieve_random()
	else:
		print('Invalid input!')
	go_on = input('\nWould you like to process more random numbers (y/n)? ')
print('\nThank you for using this program!')
