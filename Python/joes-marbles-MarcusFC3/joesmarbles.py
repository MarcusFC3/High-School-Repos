#Marcus Jones Jr.
#Ch2 Lab 1
#8/26/2024
firstName = input("Please enter your first name: ")
lastName = input("Please enter your last name: ")
numOfMarbles = int(input("Please enter the number of marbles you wish to purchase: "))
MARBLE_PRICE = 1.2
print(f"\nOrder prepared for {firstName} {lastName}\n")
print(f"{numOfMarbles} marbles ordered @ ${MARBLE_PRICE:.2f}\n")
print(f"Total cost is ${numOfMarbles * MARBLE_PRICE:.2f}")
