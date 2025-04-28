#Marcus Jones Jr.
#ch5 lab1
#8/29/2024
def main():
    temperature = float(input("What is the current temperature? "))
    temp_type = "?"
    while temp_type != "c" and temp_type != "f":
        temp_type = input("Did you enter the temperature in (c)elsius or (f)ahrenheit? ")
        if temp_type != "c" and temp_type != "f":
            print("Invalid input, please try again!")
    if temp_type == "c":
        celsius_to_fahrenheit(temperature)
    if temp_type == "f":
        print(f"The current temperature is {temperature} fahrenheit this temperature in celsius is {fahrenheit_to_celsius(temperature):.2f}")

def celsius_to_fahrenheit(celsius):
    print(f"The current temperature is {celsius} celsius this temperature in fahrenheit is {celsius * float(9/5) + 32:.2f}")
def fahrenheit_to_celsius(fahrenheit):
    return  (fahrenheit - 32) * float(5 / 9)

main()