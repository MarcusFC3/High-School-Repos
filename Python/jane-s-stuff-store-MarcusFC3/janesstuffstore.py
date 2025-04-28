#Marcus Jones Jr
#Ch4 Lab1
#8/29/2024
print("Jane's Stuff Store\n")
TOTAL_NUM_OF_ITEMS = int(input("How many items would you like to purchase? "))
totalCost = 0
print()
for num in range(TOTAL_NUM_OF_ITEMS):
    itemPrice = float(input(f"Enter the price of item {num + 1}: "))
    totalCost += itemPrice
print(f"\nThe total cost of your items is ${totalCost:.2f}")
print(f"The average cost of each item is ${totalCost/TOTAL_NUM_OF_ITEMS:.2f}")
