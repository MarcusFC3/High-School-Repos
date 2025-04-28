# Temperature Converter

In this exercise, you’ll use radio buttons to determine whether the conversion is from Fahrenheit to Celsius or vice versa. You’ll also modify the DOM so the labels change when a radio button is clicked, and the page displays an error message when the user enters invalid data.  
  
When the user does a conversion from Fahrenheit to Celsius, it looks like this:  

![image](https://user-images.githubusercontent.com/17011204/206586861-ddb8d562-7883-47e4-88de-e0c56c5ac855.png)

When the user clicks on the second radio button to do a conversion from Celsius to Fahrenheit, it looks like this:  
  
![image](https://user-images.githubusercontent.com/17011204/206586930-24a7a052-6646-4292-978d-15e7226e7a2e.png)
  
And if the user enters invalid data, it looks like this:  
  
![image](https://user-images.githubusercontent.com/17011204/206587000-0d814755-023c-4cf6-8802-d167d5754a68.png)

### Instructions

- Open the application in this repo
- Note that the JavaScript file has some starting JavaScript code, including the $() function, three helper functions, three event handler functions, and a DOMContentLoaded event handler that attaches the three event handlers. 
- Review how the toCelsius() and toFarhenheit() event handler functions call the toggleDisplay() helper function and pass it strings to display. Also note that the toggleDisplay() helper function and the convertTemp() event handler function are incomplete.
- Code the toggleDisplay() function so it changes the text in the labels for the text boxes to the values in the parameters that it receives. It should also clear the disabled text box where the computed temperature is displayed. 
- Code the convertTemp() function without any data validation. It should use the helper functions to calculate the temperature based on which radio button is checked. The value returned by the helper functions should be rounded to zero decimal places.
- Add data validation to the convertTemp() function. If the entry is note a valid number, a validation message should be displayed in the element with the id of “message”.
- Add any finishing touches to the application whenever that’s appropriate. This can be things like moving the focus to the first text box and selecting the text, clearing a previous error message, or clearing a previously computed temperature value.

### Grading Criteria
- toggleDisplay() function changes lables to proper values
- convertTemp() function uses helper functions to calculate correct temperatures
- Data validation for valid numbers with proper message
- Make the app user friendly by using focus, clearing messages and diplayed values when appropriate.
- Formatting, comments, whitespace, etc.
