Vocabulary
Instance
Primary Key
Tables
Keys
Relational Database Management Systems
Field
Data Manipulation Language
Data Definition Language
Transaction Control Language
Data Control Language
Join Keyword
Operators
Column
Projection
Null
Alias
Selection
Query
Select clause
From clause

1.
SELECT *
FROM sys.Tables
8

2. 
SELECT *
FROM JOBS
4

3.
SELECT HIRE_DATE
FROM EMPLOYEES
20

4.
SELECT isNULL
FROM sys.Tables
WHERE isNUll

5.
SELECT EMPLOYEE_ID
FROM EMPLOYEES;

6.
SELECT LAST_NAME, EMAIL
FROM EMPLOYEES

7.
SELECT LAST_NAME as name,SALARY as salary , SALARY + SALARY * .05 AS "Salary with raise", BONUS as bonus, BONUS + 1 as "Bonus with raise"
FROM EMPLOYEES
Bonus is not a double so it cannot be increased by .50

8.
SELECT *
c.

9.
SELECTION
PROJECTION

10.
Null * 0.5 = Null
Select BONUS * .05
FROM EMPLOYEES
WHERE LAST_NAME like 'De Haan'

11.
SELECT and FROM