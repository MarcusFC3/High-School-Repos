SELECT *
FROM HumanResources.Employee

1.
SELECT MAX(BusinessEntityID) 'Number of Employees'
FROM HumanResources.Employee

2.
SELECT COUNT(DISTINCT JobTitle) 'Number of unique jobs'
FROM HumanResources.Employee

3.
SELECT COUNT(BusinessEntityID) 'Number of Employees'
FROM HumanResources.Employee
WHERE MaritalStatus = 'S'

4.
SELECT SUM(SickLeaveHours)'Total sick leave hours held by employees'
FROM HumanResources.Employee

5.
SELECT TOP 1 LoginID'Employee', MAX(VacationHours) 'Vacation Hours' 
FROM HumanResources.Employee
GROUP BY LoginID

6.
SELECT JobTitle, AVG(VacationHours)'Average Vacation Hours'
FROM HumanResources.Employee
GROUP BY JobTitle

7. 
SELECT MAX(Gender) 'Gender', COUNT(Gender) 'Employees'
FROM HumanResources.Employee
GROUP BY Gender


8.
SELECT Distinct JobTitle, AVG(SickLeaveHours)'Average Sick Leave Hours'
FROM HumanResources.Employee
GROUP BY JobTitle
Having AVG(SickLeaveHours) > 60

Bonus.
SELECT DISTINCT JobTitle, MAX(Gender) 'Gender', AVG(VacationHours) 'Average Vacation Hours'
FROM HumanResources.Employee
GROUP BY Gender, JobTitle
