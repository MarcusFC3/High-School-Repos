# Sales Tax Calculator

In this exercise, you’ll develop an application that calculates the sales tax and invoice total after the user enters the subtotal and tax rate. 

![image](https://user-images.githubusercontent.com/17011204/206584056-125a7590-c957-46ee-ab21-dafcd38ff4d4.png)

### Instructions

- Open the application in this repo, then, run the application to see the user interface shown above, although that interface won’t do anything until you develop the JavaScript for it.  
- In the JavaScript file, note that the $() function has been coded for you. It gets the object for the HTML element that’s specified by the CSS selector.  
- Code an event handler function named processEntries() that gets the user entries, calculates the sales tax and total, and displays those results in the text boxes.  
- Code a DOMContentLoaded event handler that attaches the processEntries() function to the click event of the Calculate button. Then, test what you have so far.  
- Add data validation to the processEntries() function. The subtotal entry should be a valid, positive number that’s less than 10,000. The tax rate should be a valid, positive number that’s less than 12. The error messages should be displayed in alert dialog boxes, and the error messages should be:  
  - Subtotal must be > 0 and < 10000  
  - Tax Rate must be > 0 and < 12  
- Add JavaScript that moves the cursor to the Subtotal field when the application starts and when the user clicks on the Calculate button.  
- Add the event handler for the click event of the Clear button. This event handler should clear all text boxes and move the cursor to the Subtotal field.  
- Add event handlers for the click events of the Subtotal and Tax Rate text boxes. Each handler should clear the data from the text box. Update the event handler for the Clear button to call these functions as well (to reduce code duplication).  

### Evaluation Criteria

- processEntries() event handler works as expected
- DOMContentLoaded event handler that attaches the processEntries() function to the button click event
- Data validation for processEntries works as expected
- Cursor moved to Subtotal on load and Calculate button
- Working event handler for clearing the form
- Event handlers to clear the text boxes when they are clicked 
  - Also used in the clear button event
- Formating, comments, whitespace, etc..

