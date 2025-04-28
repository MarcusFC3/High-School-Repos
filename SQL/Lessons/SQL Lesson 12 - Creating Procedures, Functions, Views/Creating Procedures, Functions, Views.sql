--Create and use views

--Views
	--Actual functionality
	--‘Predetermined view of a table (or tables)’
		
		CREATE VIEW vEmailPro
		AS
		SELECT FirstName, LastName, EmailPromotion
		FROM Person.Person

		SELECT * from vEmailPro	

		SELECT FirstName, LastName
		FROM vEmailPro

	
	--Allows limitations to access table data. (No SSN for example)
	--Look at properties – permissions




--Stored Procedures
	--Like a subroutine or method that we can call by name
	--A collection of lines of code
		--can accept parameters	
		--can return information
	--Advantages
		--Permissions
		--Centralized and consistent
			--Changes happen in one place
			--Always the same
		--More efficient (In MS SQL) Code is compiled and execution plan reused
		--Users don't hav directect access to underlying tables. 
		--Accepts parameters
		--Less code in the client app
	--Go to Programmability  - Bill of Materials built into AdventureWorks
		--Show Code
	--Goto System Stored Procedures – Look @ built in SPs
	
	--SIMPLE PROCEDURE
SELECT p.LastName + ', ' + p.FirstName Name, e.EmailAddress
FROM Person.Person p
Inner JOIN Person.EmailAddress e
ON p.BusinessEntityID = e.BusinessEntityID
WHERE LastName = 'Abel'

 --Make it a stored Procedure
 --add
 CREATE PROC spGetEmail
 AS

--call it
EXEC GetEmail
	

--ADD INPUT PARAMETER

ALTER PROC spGetPhone
@lastname varchar(40) = 'Abel'  --parameter with default value
AS
SELECT p.LastName + ', ' + p.FirstName Name, e.EmailAddress
FROM Person.Person p
Inner JOIN Person.EmailAddress e
ON p.BusinessEntityID = e.BusinessEntityID
WHERE LastName = @lastname	--substitute variable
	
--MULTIPLE INPUT PARAMETERS

ALTER PROC spGetPhone
@lastname varchar(40), 
@firstname varchar(40)  --parameters 
AS
SELECT p.LastName + ', ' + p.FirstName Name, e.EmailAddress
FROM Person.Person p
Inner JOIN Person.EmailAddress e
ON p.BusinessEntityID = e.BusinessEntityID
WHERE LastName = @lastname	and FirstName = @firstname



----FUNCTIONS----

--BUILT IN
	--SUM, AVG Count, ETC.
	--UDF - User Defined FUNCTIONS----
		--Can RETURN
			--Scalar (One thing)
			--Table (Table Valued) (We can query this like a table by using it in a FROM clause!)
	

--Let's create a simple scalar function

--Let's look at the table we will pull data from
SELECT * 
FROM Sales.Salesorderheader

--Here are the two columns we will combine
SELECT TaxAmt, Freight 
FROM Sales.SalesOrderHeader

--Let's create a function to add TaxAmt and Freight together
CREATE FUNCTION TandF
(
	@tax money,
	@freight money
)
RETURNS money
AS
BEGIN
	RETURN @tax + @freight
END

--Now, let's use our new function
select SalesOrderID, dbo.TandF(TaxAmt,Freight) 'Tax/Freight'
from Sales.SalesOrderHeader

--NOTE about performance!!!!
--A scalar UDF like our TandF function will run once for every
--row returned in the result set...


----TABLE VALUED FUNCTION

--Let's create a table-valued function that
--will return a list of names and phone numbers
--from the Person and PersonPhone tables
CREATE FUNCTION dbo.EmailAdresses()
RETURNS TABLE
AS
RETURN
(
SELECT p.FirstName + ' ' + p.LastName 'Name', e.EmailAddress
FROM Person.Person p
INNER JOIN Person.EmailAddress e
ON p.BusinessEntityID = e.BusinessEntityID
)

--Now let's use our new function
SELECT NAME
FROM EmailAdresses()

SELECT * 
FROM EmailAddresses()
	



--Assignment:
--1)
--Create a view called vEmployeePhoneNumbers that lists employee first names, last names and their phone numbers. 
--Employees are designated as PersonType 'EM' in the Person.Person table.
--Phone numbers are kept in the Person.Phone table.
--Two tables means this requires a join!

--2)
--Using the query you wrote for the view above, create a stored procedure called spGetUserPhone that accepts a parameter
--for the employee's last name and returns the employees's full name and phone number.

--3)
--Create a scalar function to cancatonate first, middle and last names.
--Create a query from the Person.Person table that uses the function to return a list of full names of employees.

--4)
--Create a table valued function named PhoneNumbers() that returns a table of employee first and last names with their phone numbers.













	