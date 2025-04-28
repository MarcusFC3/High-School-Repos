# Navigate between pages using a cookie

### Instructions

In this exercise, you’ll develop an application that allows you to log in, save the user data in a cookie, navigate to a new page, and log out.
The interface looks like this initially:
 
 ![image](https://user-images.githubusercontent.com/17011204/233362059-64554112-5385-46ac-a6c3-9d12befe3f04.png)

And the interface looks like this after you’ve logged in:

![image](https://user-images.githubusercontent.com/17011204/233362109-e7d11280-1d11-4d4d-a73d-94c39b69cc09.png)

 
*NOTE: Because the app uses cookies it requires http. For development you may want to install the Live Server extension in VS code or similar 
if you are using a different development envronment*

1.	Open the application in a browser to see the user interface shown above.
2.	Review the code in the login.js file. Note that it contains starts for four functions: getCookieByName(), setCookie(), deleteCookie(), and goToPage(). The getCookieByName() function returns an empty string, while the others contain no code.
3.	Review the index.html file and notice that its embedded JavaScript code uses the functions in the login.js file. 
4.	Review the login.html file and notice that its embedded JavaScript code uses the functions in the login.js file. 
5.	In the login.js file, update each of the functions so they perform the tasks described by their names. Use the examples in figures 14-5 through 14-7 as a guide for the first three, and figure 14-1 for the last one.
6.	Run the application, enter a user name, and click Log In. When the login.html page displays, press F12 to open the developer tools and display the Storage panel (in FireFox) to view the cookies for this application. This should show the cookie for this application.
7.	Click on the Log Out button. When the index.html page is displayed, use the Storage panel of the developer tools to view the cookies for this application. This shouldn’t show any cookies.


### Evaluation

- getCookieByName function properly coded  
- setCookiefunction properly coded  
- deleteCookie function properly coded  
- goToPage function properly coded  
- Comments, code formatting, etc..  
