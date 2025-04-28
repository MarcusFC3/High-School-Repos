1.
SELECT FirstName, LastName
INTO MaPeople
FROM Person.Person
WHERE FirstName like 'Ma%'

SELECT FirstName, LastName
INTO GPeople
FROM Person.Person
WHERE LastName like 'G%'

2.
SELECT *
FROM MaPeople
UNION ALL
SELECT * 
FROM GPeople

3.
SELECT *
FROM MaPeople
INTERSECT
SELECT * 
FROM GPeople

4.
SELECT LastName, FirstName
FROM MaPeople
INTERSECT
SELECT LastName, FirstName
FROM GPeople
ORDER BY LastName, FirstName

5.
SELECT LastName, FirstName
FROM MaPeople
INTERSECT
SELECT LastName, FirstName
FROM GPeople
ORDER BY LastName, FirstName
OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY;

6.
SELECT LastName, FirstName
FROM MaPeople
INTERSECT
SELECT LastName, FirstName
FROM GPeople
ORDER BY LastName, FirstName
OFFSET 2 ROWS FETCH NEXT 3 ROWS ONLY;
