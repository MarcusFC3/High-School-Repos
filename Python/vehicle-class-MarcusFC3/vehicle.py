class vehicle:

    def __init__(self):
        self.__speed = 0

    def display_speed(self):
        print(f"Current Speed: {self.__speed}")

    def accelerate(self):
        self.__speed += 1
        print("Accelerating...")

    def decelerate(self):
        self.__speed -= 1
        print("Decelerating...")

    def __str__(self):
        return f"This is a vehicle with a speed of {self.__speed}"
