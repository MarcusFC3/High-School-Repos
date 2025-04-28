--INSERT UPDATE DELETE

--Let's look at the table we're going to INSERT
--data into
SELECT * FROM Production.UnitMeasure

--Note the syntax...
--Listing the column names before VALUE is not
--required if the data is listed in the order of
--the columns.
INSERT INTO Production.UnitMeasure
(UnitMeasureCode, Name, ModifiedDate) --This line not required!
VALUES 
('FT', 'Feet', '20080414');

--The data can be input in a different column order
--You must list the columns before VALUES in the
--order that you will be inserting the data
INSERT INTO Production.UnitMeasure
(Name, UnitMeasureCode, ModifiedDate) --This line is required!
VALUES 
('Miles', 'MLS', '20080414');


--Multiple rows of data can be added using a single
--INSERT statement
		

--NOTE!
--If you try to execute the above INSERT statement more
--than once, you will receive an error message because
--you are attempting to INSERT identical data into the table
--and this violates the PRIMARY KEY


--The INSERT SELECT option
--Uses the results of a SELECT statement as the source
--for data to be inserted

--Let's create an empty table to insert data into
CREATE TABLE dbo.EmployeeSales
( DataSource varchar(20) NOT NULL,
BusinessEntityID varchar(11) NOT NULL,
LastName varchar(40) NOT NULL,
SalesDollars money NOT NULL
);

--Highlight the above query and execute it

--Take a look at the empty table
select * from EmployeeSales

--Now, let's perform an INSERT SELECT
INSERT INTO dbo.EmployeeSales
SELECT 'SELECT', sp.BusinessEntityID, c.LastName, sp.SalesYTD
FROM Sales.SalesPerson AS sp
INNER JOIN Person.Person AS c
ON sp.BusinessEntityID = c.BusinessEntityID
WHERE sp.BusinessEntityID LIKE '2%'
ORDER BY sp.BusinessEntityID, c.LastName;

--Now, take a look at the table...
--It has data!
select * from EmployeeSales


--****UPDATE***

--Let's take a look at the table we will UPDATE
select * from Person.Address

--A simple UPDATE 
--NOTE what happens when you run it!
UPDATE Person.Address
SET ModifiedDate = '20080515';
--Hint...we'll talk about dealing with these
--kinds of issues later in the course when
--we look at transactions...

--Adding a WHERE clause to the UPDATE statement
--First, determine which data row you want to update
select * from Person.Address

--We want to update AddressLine1 where it is currently
--1226 Shoe St.
UPDATE Person.Address
SET AddressLine1='1227 Shoe St.'
WHERE AddressLine1='1226 Shoe St.'

--Verify the change was made
select * from Person.Address

--We can UPDATE several columns at once
--Let's look at the table we are going to UPDATE
select * from Sales.SalesPerson

--Now let's update multiple columns
UPDATE Sales.SalesPerson
SET Bonus = 6000, CommissionPct = .10, SalesQuota = NULL
WHERE TerritoryID=1;

--Look at the table and verify UPDATE occurred
select * from Sales.SalesPerson



--****Delete*****


--Let's use SELECT INTO to create a 
--table to run a few DELETE examples
SELECT TOP 25 LastName, FirstName INTO DeleteExample
FROM Person.Person

--Take a look at the new table
select * from DeleteExample

--Let's run a simple, dangerous DELETE query
DELETE FROM DeleteExample
--Oh, no! The message says that 25 rows were deleted!
--We didn't use a WHERE clause...

--Let's reload our table with data using INSERT SELECT
INSERT INTO DeleteExample
SELECT TOP 25 LastName, FirstName FROM Person.Person

--Verify the data was loaded into the table
select * from DeleteExample

--Now let's use DELETE to remove only the records
--for Kim Abercrombie
DELETE FROM DeleteExample
WHERE LastName='Abercrombie' AND FirstName='Kim'


--A trick for using DELETE without being surprised!
--Write the DELETE statement as a SELECT statement 
--Execute it and see how many rows are returned...
--THEN convert it to a DELETE and execute it!
--
--We want to DELETE records for Ben Adams
--So we'll first write the command as a SELECT
SELECT
LastName, FirstName 
FROM DeleteExample
WHERE LastName='Adams' AND FirstName='Ben'

--Looks good, now lets make it a DELETE statement
--Highlight SELECT LastName,FirstName and change it to the following
--then execute it
DELETE
FROM DeleteExample
WHERE LastName='Adams' AND FirstName='Ben'


--ASSIGNMENT
	--Populate the Character table with at least 3 characters
	--Populate the Equipment table with at least 4 pieces of equipment
	--Populate the CharacterEquipment table, assigning at least 2 pieces of equipment
	  --to each of the three characters
	--Construct a query to list each character (by name) 
	  --and their equipment (name of equipment)
	--Change one piece of equipment for at least two characters
	--Delete one piece of equipment for a character