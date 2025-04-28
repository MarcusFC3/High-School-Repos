# Array Name Search

The root folder of this project contains two files.
- GirlsNames.txt – The top 200 girl names from 2000-2009  
- BoysNames.txt – The top 200 boy names from 2000-2009  




Create an application that reads the contents of the two files into two separate arrays. 
The user should be able to enter a name into a text box on the form. 
When the search button is pressed the form should display if the name was found in either 
or both lists (or neither) and the position in each list where it was found. 
Use full sentences in displaying the results to the user.

Note: Remember that humans count from one, programmers count from zero! Take that into consideration when reporting the position to the user.

Your project should contain a method called *StringArraySearch* that accepts the string for which the user is searching and an array of names 
which needs to be searched. This method should perform a sequential search  and should return the position where the name was found or -1 if it was not found. 
Your program will need to call this method twice, once to search through the girl names and once to search through the boy names.  

*Hint: Don't confuse yourself by trying to do both at once. Get it to work with boys or girls first, then modify it and add the other.*


## Primary Evaluation Criteria


- Program displays the correct results
  -- watch for ‘one-off’ errors
				
*Items below not graded for non-functioning programs*   
- Correctly loads names from the files into two arrays
- StringArraySearch method 
  - Parameters for array and name
  - Sequentially searches the array
  -	Returns the position
  - Decoupled from the user interface
  - Single method used twice

- All buttons work correctly
- No extraneous code
- Variables/Comments/Documentation/Format/Readability/Organization
