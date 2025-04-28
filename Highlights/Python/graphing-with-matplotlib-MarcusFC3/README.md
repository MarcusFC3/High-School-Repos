# Graphing a Linear Equation

### Instructions

Create a python application that uses the matplotlib library to graph a linear equation in slope-intercept form
(y = mx + b) when the user enters the values for m (slope) and b (y-intercept).

- Use list comprehension to generate x coordinates from -20 to positive 20.
- Use list comprehension to generate the y coordinates using the slope-intercept equation and the list of x coordinates.
- Plot the coordinates

#### Hints
- You can force the grid to be square by using plt.axis('square'). Do this before setting your limits.
- Set the limits for both the x and y axis to be from -20 to 20.
- You can turn on a grid by using plt.grid(True)
- You can turn on the x and y axis by using axhline and axvline:
  - plt.axhline(y=0, color='k')
  - plt.axvline(x=0, color='k')

### Examples
![image](https://user-images.githubusercontent.com/17011204/235982769-5c27cd15-f917-4531-9b38-3e4b1c4b64cd.png)

![image](https://user-images.githubusercontent.com/17011204/235982793-5b5cec4e-e4ab-4f97-9d8e-2f16538d87ea.png)


### Evaluation
- Input and input validation
- Use of list comprehension for x coordinates
- Use of list comprehension for y coordinates
- Correct plotting of values
- Formatting of the plot
- Comments and code formatting
