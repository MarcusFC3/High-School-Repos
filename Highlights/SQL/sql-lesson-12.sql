1.
CREATE VIEW vEmployeePhoneNumbers
AS
SELECT pp.FirstName, pp.LastName, ph.PhoneNumber
FROM Person.Person AS pp 
INNER JOIN Person.PersonPhone AS ph
ON pp.BusinessEntityID = ph.BusinessEntityID

SELECT *
FROm vEmployeePhoneNumbers
2.
CREATE PROC spGetUserPhone
@LastName varchar(40)
AS
SELECT pp.FirstName + ' '+ pp.LastName AS 'Full Name', ph.PhoneNumber
FROM Person.Person AS pp 
INNER JOIN Person.PersonPhone AS ph
ON pp.BusinessEntityID = ph.BusinessEntityID
WHERE LastName = @LastName

EXEC spGetUserPhone 'Goldberg'
3.
CREATE FUNCTION FullName
(
	@FirstName varchar(40),
	@MiddleName varchar(40),
	@LastName varchar(40)
)
RETURNS varchar(120)
AS
BEGIN
IF(@MiddleName IS NULL)
BEGIN
 RETURN @FirstName + ' ' + @LastName
END
	Return @FirstName + ' '+ @MiddleName + ' ' + @LastName
END

SELECT BusinessEntityID, dbo.FullName(FirstName,MiddleName,LastName)
FROM Person.Person
WHERE PersonType LIKE 'EM'
ORDER BY BusinessEntityID
4.
CREATE FUNCTION PhoneNumbers()
RETURNS TABLE
AS
RETURN
SELECT p.FirstName, p.LastName, ph.PhoneNumber
FROM Person.Person AS p 
INNER JOIN Person.PersonPhone AS ph
ON p.BusinessEntityID = ph.BusinessEntityID

SELECT *
FROM PhoneNumbers()
