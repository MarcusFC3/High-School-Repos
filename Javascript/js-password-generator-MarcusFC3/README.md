# Password Generator

In this exercise, you’ll develop an application that generates strong passwords of the length entered by the user.

![image](https://user-images.githubusercontent.com/17011204/206783998-600c2e6e-0f64-4e5c-ae49-e05ee1da6757.png)

### Instructions

- In the JavaScript file, note the getRandomNumber() function. Also, note that the ready event handler contains the handler for the click event of the Get Password button and the handler for the click event of the Clear button. 
  - The handler for the Get Password button clears the password text box and has a constant named chars that contains some characters. 
  - The handler for the Clear button resets the text boxes and moves the focus to the first text box.
- In the handler for the Get Password button, get the value entered by the user and make sure it’s a number. 
  - If it isn’t, display an alert dialog box with this message: “Please enter a valid number”.
- If the number entered by the user is valid, code a for loop that iterates that number of times. 
  - In each iteration of the loop, randomly select one of the characters from the chars constant and concatenate it to the password variable.
- When the loop is finished, display the password in the password textbox.


### Evaluation Criteria

- User information retrieved properly
- Validation of user entered information
- Proper selection and coding of a loop
- Password generation from the chars constant
- Display of password
- Formatting, comments, whitespace, etc..
