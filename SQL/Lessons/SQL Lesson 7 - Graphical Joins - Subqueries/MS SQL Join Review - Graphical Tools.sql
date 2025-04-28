--JOINS

	--Review the need for Normalization
	
	--Three types of Joins
		--Inner
		--Outer
			--Left Outer
			--Right Outer
			--Full Outer
		--Cross Joins

	--Look at tables to see people and phone numbers
	--Run both together to see results at once
	SELECT TOP 1 * 
	FROM person.person  
	SELECT TOP 1 * 
	FROM person.personphone


--Basic INNER JOIN that joins two tables
	--without table aliasing						 
	SELECT        
   		Person.Person.FirstName, 
   		Person.Person.LastName, 
   		Person.PersonPhone.PhoneNumber
	FROM Person.Person 
	INNER JOIN
   		Person.PersonPhone 
   	ON Person.Person.BusinessEntityID = Person.PersonPhone.BusinessEntityID

--Basic INNER JOIN that joins two tables
	--with table aliasing						 
	SELECT        
   		p.BusinessEntityID,
   		p.FirstName, 
   		p.middlename,
   		p.LastName, 
   		ph.PhoneNumber
	FROM Person.Person p
	INNER JOIN Person.PersonPhone ph
   	ON p.BusinessEntityID = ph.BusinessEntityID


--OUTER JOIN
	--This will return ALL records from the left table
	--It will return NULL for columns in the right table
	--that do not match with the left table
	
	SELECT
		c.CustomerID, 
		c.CustomerID AS Expr1, 
		soh.OrderDate
	FROM 
		Sales.Customer c
	LEFT OUTER JOIN Sales.SalesOrderHeader soh
	ON c.CustomerID = soh.CustomerID


	--If we switch the positions of the table names in the query
	--we can change LEFT OUTER JOIN to RIGHT OUTER JOIN and get
	--the same results

	SELECT
		c.CustomerID, 
		c.CustomerID AS Expr1, 
		soh.OrderDate
	FROM 
		Sales.SalesOrderHeader soh
	RIGHT OUTER JOIN
		Sales.Customer c
	ON c.CustomerID = soh.CustomerID




--GUI Joins
	--Graphical Query Tool
	--Can Simplify because it is visual
	
	--New Query - Rt Click - Design Query in Editor
	--Add Tables
	--Right click relationship -> properties to see join criteria
	--Select column from tables
	--Select symbol on relationship line to change to Outer Join
	--Click OK
		--Clean it up!
	--You can also copy query into designer to go the other way for modification
	--or highlight before designing in editor
	
	
	
--ASSIGNMENT

--Using the Person.Person and HumanResouces.Employee tables
--construct a query to display the firstname, last name and job titles
--of all employees


--Using the Person.Person and HumanResouces.Employee tables
--construct a query to display the firstname, last name and accrued
--vacation time of all salaried employees. Sort the list by last name
--and then first name.


--Use the Person.Person and Sales.Customer tables to list all
--the names and account numbers of all customers whose last names
--begin with the letter 'S'.


--How many customers have last names beginning with S? (Answer with a query!)


--CHALLENGE
-- List the First and Last Names, Job Title and Department Names of all emplyees
-- Hint: This will require multiple joins! (4 Tables!!!)


	
	
	
	