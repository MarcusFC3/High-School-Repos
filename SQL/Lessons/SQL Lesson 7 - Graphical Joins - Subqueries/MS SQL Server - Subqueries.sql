--SUBQUERIES

  --Result of one query used in another query
  --Work from inside-out
  --Outer Query and Inner Query
  

  	--Subqueries can be
  		--Simple
  		--Correlated
  	--Subqueries can return:
  		--Scalar
		--Multi-valued
		--Table-Valued	 
  		
  		
	--Simple subqueries return a single result set used by the outer query:
		--Single Value, List of values from a single column or T/F

	--Correlated Subquery
		--Depends on a value from the outer query
		
	
--Subqueries vs. Joins
	--Most can be written either way
		--Joins perform faster (according to some)
		--Subqueries are easier to read (according to some)
	--MS says no difference if done properly
		--subqueries that check for existence of data - Use join!
			--indexes make them faster in that case
	--Get it done - optimize it later if needed
	

--Scalar Subquery - Returns one value

--Which SalesOrder has the highest total due and how much is it?

	--Let's find the Maximum Sales Order
	--Build from here
	SELECT SalesOrderID, Max(TotalDue)
	FROM Sales.SalesOrderHeader
	
	--Add
	GROUP BY SalesOrderID
	--Add
	ORDER BY MAX(TotalDue) DESC
	--Add Top 1
	--messy and innefficient

	--Using a subquery

	--Inside-Out
	SELECT MAX(TotalDue)
	FROM Sales.SalesOrderHeader

	--187487.825 is the answer

	SELECT SalesOrderID, TotalDue
	FROM Sales.SalesOrderHeader
	WHERE TotalDue = 187487.825



	SELECT SalesOrderID, TotalDue
	FROM Sales.SalesOrderHeader
	WHERE TotalDue =
		(SELECT MAX(TotalDue)
		 FROM Sales.SalesOrderHeader)





--Multivalued Subquery

  --Which of our sales people have made sales?
  SELECT FirstName, LastName, BusinessEntityID
  FROM Person.Person
  WHERE BusinessEntityID IN
  		(SELECT DISTINCT SalesPersonId
  		 FROM Sales.SalesOrderHeader)

--Which Products are in the 'Wheels' subcategory?
	SELECT Name
	FROM Production.Product
	WHERE ProductSubcategoryID IN
		(SELECT ProductSubcategoryID
		 FROM Production.ProductSubcategory
		 WHERE Name = 'Wheels');



--Single value vs.  Multi value 
	--Notice '=' vs. 'in'


	--Common Subquery formats:

		--WHERE expression [NOT] IN (subquery)

		--WHERE expression comparison_operator [ANY | ALL] (subquery)

		--WHERE [NOT] EXISTS (subquery)



--Correlated
	--Tough
	--Learn to recognize
	
	--Which sales person has an order with totaldue > $150K?
	
	--Using Join
	SELECT DISTINCT p.BusinessEntityId, p.FirstName + ' ' + p.LastName Name
	FROM Person.Person p
	JOIN Sales.SalesOrderHeader s
	ON p.BusinessEntityID = s.SalesPersonID
	WHERE s.TotalDue > 150000
	
	--Using Correlated Subquery (notice alias in out query)
	SELECT p.BusinessEntityID, p.FirstName + ' ' + p.LastName NAME
	FROM Person.Person p
	WHERE EXISTS
		(SELECT s.SalesPersonID
		 FROM Sales.SalesOrderHeader s
		 WHERE TotalDue > 150000
		 AND p.BusinessEntityID = s.SalesPersonID)
	
	--Notice outer table referenced in inner query	 
	--Inner query can use * since we are only looking for existence
	--Inner query runs repeatedly for each outer result
	
	
		 
--ASSIGNMENT

--1) List the name and price of the most expensive product(s) in the 
--   Production.Product table


--2) Which employee has the most vacation hours accrued?


--3) Using a subquery, list the first and last names of empoyees who are salaried. 


--4) Repeat the previous problem using a join


--5) Find the SalesOrderID, OrderDate, Account Number, CustomerID, SalesPersonID,
--   and TotalDue for every SalesPerson who recived more than $5000 in bonus
--   You will need the SalesPerson and SalesOrderHeader tables.







