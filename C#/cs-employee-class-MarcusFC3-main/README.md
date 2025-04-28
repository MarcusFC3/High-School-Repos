# Employee Class

#### Create a class named _Employee_ that has the following properties:
- *EmployeeID* - Holds the employee's ID number
- *Name* - Holds the employee's name
- *Department* - Holds the name of the department where the employee works
- *Position* - holds the employee's job title

#### The class should have the following overloaded constructors:
- A constructor that accepts the following values as arguments and assigns them to the appropriate properties:
  - employee's id number, employees name, department and position

- A constructor that accepts the following values as arguments and assigns them to the appropriate properties:
  - employee's id number, employees name
  - the department and position properties should be assigned an empty string ("")

- A constructor that assigns 0 to the employees ID and assigns empty string ("") to the other three properties:

#### In the click event for the display button, create the following three Employee objects tho hold the following data.
- Make sure that you test each constructor by using a different constructor for each employee.
- Store the three employees in a List of Employees as they are created
- use a for-each loop to add the employee objects to the display list box provided.
  - A good ToString() method will come in handy here

ID Number | Name | Department | Position
--------- | ---- | ---------- | --------
47899 | Susan Meyers | Accounting | Vice President
37119 | Mark Jones | IT | Programmer
81774 | Joy Rogers | Manufacturint | Engineer


### Evaluation Criteria
#### Class
- Four backing fields declared as private (if used)  		
- Properties implemented for each backing field  
- Override ToString Method
##### Class Constructors
- Default Constructor
- 2 parameter constructor  
- 4 parameter constructor	
- Constructors use *properties*

##### Test
- Three employees created
  - Default constructor
    - (all properties set manually)  
  - Two parameter constructor 
    - (remaining properties set)
  - Four parameter constructor

- Each employee added to a list of employees
- List of employees processed with a loop to display each employee’s information
  - (using implicit ToString())

- Proper documentation and coding standards followed

