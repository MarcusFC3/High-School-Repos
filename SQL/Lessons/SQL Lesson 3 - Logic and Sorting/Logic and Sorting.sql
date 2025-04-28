--LOGIC OPERATIONS --

-- AND - Returns TRUE if both conditions are true.
-- OR - Returns TRUE if either condition is true.
-- NOT - Returns TRUE if the condition is false.

SELECT last_name, department_id, salary 
FROM employees
WHERE department_id > 50 AND salary > 12000;

SELECT last_name, hire_date, job_id
FROM employees
WHERE hire_date > '01-Jan-1998' AND job_id LIKE 'SA%';

SELECT department_name, manager_id, location_id 
FROM departments
WHERE location_id = 2500 OR manager_id=124;

SELECT department_name, location_id FROM departments
WHERE location_id NOT IN (1700,1800);


-- Precedence -- What happens first?

SELECT last_name, first_name, department_id
FROM employees
WHERE department_id IN(50,80) 
	AND first_name LIKE 'C%' 
	OR last_name LIKE '%s%';


--Arithmetic + - * /
--Concatenation +
--Comparison <, <=, >, >=, <>
--IS (NOT) NULL, LIKE, (NOT) IN
--(NOT) BETWEEN
--NOT
--AND
--OR

SELECT last_name, first_name, department_id
FROM employees
WHERE department_id IN(50,80) 
	OR first_name LIKE 'C%' 
	AND last_name LIKE '%s%';
	
--Parenthesis changes it
SELECT last_name, salary * 1.05 As "Employee Raise" FROM employees
SELECT last_name, first_name, department_id
FROM employees
WHERE (department_id IN(50,80) 
	OR first_name LIKE 'C%') 
	AND last_name LIKE '%s%';
	
	
	
--SORTING ROWS--

--ORDER BY Clause
----The default sort order is ascending.
----Numeric values are displayed lowest to highest.
----Date values are displayed with the earliest value first.
----Character values are displayed in alphabetical order.
----Null values are displayed last in ascending order and first in descending order.
----NULLS FIRST Specifies that NULL values should be returned before non-NULL values.
----NULLS LAST Specifies that NULL values should be returned after non-NULL values.

SELECT last_name, hire_date 
FROM employees
ORDER BY hire_date;

--*** The ORDER BY clause must be the last clause of the SQL statement. ***---

--Descending Order
 
SELECT last_name, hire_date 
FROM employees
ORDER BY hire_date DESC;


--Aliases

SELECT last_name, hire_date AS "Date Started"
FROM employees
ORDER BY "Date Started";


SELECT employee_id, first_name 
FROM employees
WHERE employee_id < 105
ORDER BY last_name;   --not in query!

-- The order of execution of a SELECT statement is as follows:
--		FROM clause: locates the table that contains the data
--		WHERE clause: restricts the rows to be returned
--		SELECT clause: selects from the reduced data set the columns requested
--		ORDER BY clause: orders the result set


--Multiple columns
SELECT department_id, last_name 
FROM employees
WHERE department_id <= 50
ORDER BY department_id, last_name;

SELECT department_id, last_name
FROM employees
WHERE department_id <= 50
ORDER BY department_id DESC, last_name;



