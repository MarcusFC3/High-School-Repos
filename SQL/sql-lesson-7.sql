JOIN Review
1.
SELECT p.FirstName, p.LastName, e.JobTitle
FROM Person.Person p INNER JOIN HumanResources.Employee e
ON p.BusinessEntityID = e.BusinessEntityID

2.
SELECT p.FirstName, p.LastName, e.VacationHours
FROM Person.Person p INNER JOIN HumanResources.Employee e
ON p.BusinessEntityID = e.BusinessEntityID
Where e.SalariedFlag = 1
ORDER BY p.LastName, p.FirstName

3.
SELECT p.LastName, p.FirstName, c.AccountNumber
FROM Person.Person p INNER JOIN Sales.Customer c
ON p.BusinessEntityID = c.CustomerID
Where p.LastName like 'S%'

4.
SELECT COUNT(p.LastName) AS 'Customers with last name beggining with S'
FROM Person.Person p INNER JOIN Sales.Customer c
ON p.BusinessEntityID = c.CustomerID
Where p.LastName like 'S%'

Bonus
SELECT p.LastName, p.FirstName, e.JobTitle, d.Name
FROM Person.Person p INNER JOIN HumanResources.Employee e INNER JOIN HumanResources.EmployeeDepartmentHistory edh INNER JOIN HumanResources.Department d
ON edh.DepartmentID = d.DepartmentID
ON edh.BusinessEntityID = e.BusinessEntityID
ON e.BusinessEntityID = p.BusinessEntityID

SUBQUERIES
1.
SELECT  Name, StandardCost
FROM Production.Product
Where StandardCost = (SELECT MAX(STANDARDCOST)
					  FROM Production.Product)

2.
SELECT p.LastName, p.FirstName
FROM Person.Person p
WHERE EXISTS (SELECT MAX(e.VacationHours)
						FROM HumanResources.Employee e
						group BY BusinessEntityID
						Having MAX(e.VacationHours) = 99 
						AND p.BusinessEntityID = e.BusinessEntityID)

3.
SELECT p.FirstName, p.LastName
FROM Person.Person p
WHERE EXISTS (SELECT SalariedFlag
				FROM HumanResources.Employee e
				Where SalariedFlag = 1
				AND p.BusinessEntityID = e.BusinessEntityID)

4.
SELECT p.FirstName, p.LastName
FROM Person.Person p INNER JOIN HumanResources.Employee e
ON p.BusinessEntityID = e.BusinessEntityID
WHERE SalariedFlag = 1

5.
SELECT soh.SalesOrderID, soh.OrderDate, soh.AccountNumber, soh.CustomerID, soh.SalesPersonID, soh.TotalDue
FROM Sales.SalesOrderHeader soh
WHERE EXISTS (SELECT Bonus
				FROM Sales.SalesPerson sp
				Where Bonus > 5000
				AND soh.SalesPersonID = sp.BusinessEntityID)

						