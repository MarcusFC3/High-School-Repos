# Writing and Reading Random Numbers with Files

*Accept the GitHub Classroom Assignment and clone the repo. Any questions or clarifications you need on this project should be done by pushing your code and commenting in the Feedback Pull Request that was generated when you accepted the assignment.*


## Step 1: Save a File

Create an application that writes a series of random numbers to a file. Each random
number should be in the range of 1 through 100. The application should let the user
specify how many random numbers the file will hold. Write the file to a location where
it may be read by the second project you will make in step 2.  


## Step 2: Read and process the File

Create another application in the same solution as step 1. The application should read 
the entre file that was created in step 1. The application should read the numbers from
the file, display each number in a ListBox control, and then display the following data:  

- The total of the numbers in the file
- The quantity of numbers in the file
- The average of the numbers in the file


## Step 3 - Submission and communication

Make sure you fix any problems and get your program working prior to the next steps. Adding the SaveFileDialor or OpenFileDialog is
easier for most people if they have a hard-coded file working first.


## Step 4

Allow the user to pick their own filename and save location by adding a SaveFileDialog control to
the project from step 1. Modify the project from step 2 to allow the user to use an OpenFileDialog control to
pick a file from any location on their computer. 


## Grading Criteria

### File Writer
- Parses user input using TryParse and uses appropriate error message				
- Generates n random numbers and writes them to a file using a ‘for’ loop		
- Properly uses SaveFileDialog (with default extension .txt)
- Try-Catch blocks for File Writing


### File Reader			
- Program reads all numbers from the file using a while loop
- Program displays correct stats (count, total, average)
- Program Uses OpenFileDialog (with default extension .txt)
- Try Catch Block for File Reading


### General
- Variables named properly and consistently
- Comments/Documentation
- Format/Readability/Organization
