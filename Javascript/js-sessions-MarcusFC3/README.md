# Navigate between pages and use session storage

In this exercise, you’ll enhance the Account Profile application to save its data in session storage, navigate to a new page, and allow you to navigate back to the original page. When you click on the Save button, a new page gets the data from session storage and displays it like this:
 
 ![image](https://user-images.githubusercontent.com/17011204/233376880-30165b6b-b7c4-411f-83ae-895e166a1ff7.png)

### Instructions

1.	Open the application in a web browser
2.	In the save_profile.js file, find the code in the handler for the click event of the Save button that validates the user entries. Then, find the if statement that checks the value of the isValid variable. 
3.	Add code to the if statement that saves the values in the email, phone, zip, and dob constants to session storage. Then, add code that uses the location object to navigate to the profile.html file.
4.	Review the code in the display_profile.js file. Note that it contains the jQuery ready event handler and a handler for the click event of the Back button.
5.	In the ready event handler, add code that retrieves the profile information from session storage and displays it in the span elements whose id attributes are “email”, “phone”, “zip”, and “dob”. Use the jQuery text() method of the span elements to do this.
6.	In the handler for the click event of the Back button, add code that uses the history object to go back to the previous page.
7.	Run the application, enter valid data, and click Save. After you review the data that’s displayed on the profile.html page, press F12 to open the developer tools and display the Application panel to view the data in session storage for this application.
8.	Click on the Back button, make a change, and click Save. Then, display the Application panel of the developer tools again to see how the data in session storage has changed.

### Evaluation

- All event handlers coded correctly according to the instructions  
- Comments, Code formatting, etc..
