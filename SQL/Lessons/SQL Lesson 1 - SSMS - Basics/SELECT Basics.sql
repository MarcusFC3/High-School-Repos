--display all of the columns of data in a table by using an asterisk symbol (*) 
SELECT *
FROM countries;

--Also retrieving all columns
SELECT country_id, country_name, region_id
FROM countries
WHERE country_id

--'Projecting' specific columns
SELECT location_id, city, state_province
FROM locations;


--Using Operators
----Just like other languages
----precedence rules apply - PEMDAS (and others)
SELECT last_name, salary, salary + 300
FROM employees;

--NULL values
--NULL is a value that is unavailable, unassigned, unknown, or inapplicable.
--NULL is not the same as a zero (a number) or a space (a character).
--Relational databases use a placeholder called NULL or null to represent these unknown values.
--***Any math with a NULL is NULL!!!***
SELECT last_name, job_id, salary, commission_pct, salary*commission_pct
FROM employees;


--Aliases
--Look at the preious statment column headings
--A column alias:
----Renames a column heading
----Is useful with calculations
----Immediately follows the column name
----May have the optional AS keyword between the column name and alias
----Requires double quotation marks if the alias contains spaces or special characters, or is case-sensitive

SELECT * |column|expr[ AS alias], .....
FROM table;

SELECT last_name AS name,
commission_pct AS comm
FROM employees;

SELECT last_name"Name",
salary*12 "Annual Salary"
FROM employees;