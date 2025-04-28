#Marcus Jones Jr.
#Ch3 Lab1
#8/26/2024
print("Numeric Workday Translater \n")
workdayNum = int(input("Enter in the numeric value of the workday you wish to translate: "))
if workdayNum == 1:
    workday = "Monday"
elif workdayNum == 2:
    workday = "Tuesday"
elif workdayNum == 3:
    workday = "Wednesday"
elif workdayNum == 4:
    workday = "Thursday"
elif workdayNum == 5:
    workday = "Friday"
elif workdayNum == 6 or workdayNum == 7 or workdayNum == 0:
    workday = "a weekend"
else:
     workday = "Invalid"  
print(f"The workday is {workday}")
