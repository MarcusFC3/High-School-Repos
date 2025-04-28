import matplotlib.pyplot as plt


def main():
    print("This program will graph a line when given the slope and the intercept.\n"
          "Please enter the values for m and b given the form y = mx + b")
    slope = float(input("m: "))
    y_intercept = float(input("b: "))
    x_coordinates = [num for num in range(-20, 21)]
    y_coordinates = [slope * num + y_intercept for num in x_coordinates]

    plt.plot(x_coordinates, y_coordinates)
    plt.axis("square")
    plt.xlim(-20,20)
    plt.ylim(-20,20)
    plt.grid(True)
    plt.axhline(y=0, color='k')
    plt.axvline(x=0, color='k')
    plt.show()

main()