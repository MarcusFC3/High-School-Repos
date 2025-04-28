-- Simple concatenation of strings can be done with the + operator in T-SQL
-- Does not work with strings and numbers (Use Cast or Concat instead)
SELECT FIRST_NAME + ' ' + LAST_NAME + ' - ' + Salary
FROM EMPLOYEES


--DISTINCT - gets unique instances
SELECT department_id
FROM employees;

SELECT DISTINCT department_id
FROM employees;

-- Limiting Rows - Where clause

SELECT*|{[DISTINCT] column | expression alias]..}
FROM table
[WHERE condition(s)];

--  > < = >= <=  <>  !=

SELECT employee_id, last_name, department_id
FROM employees
WHERE department_id = 90;

SELECT first_name, last_name
FROM employees
WHERE last_name = 'Taylor';

--T-SQL ignores case. Not all servers do that.
SELECT first_name, last_name
FROM employees
WHERE last_name = 'jones';

--WHERE hire_date < '01-Jan-2000'
--WHERE salary >= 6000
--WHERE job_id = 'IT_PROG'


--Will salaries of 3000 be included?
SELECT last_name, salary
FROM employees
WHERE salary <= 3000;


-- BETWEEN AND --
SELECT last_name, salary
FROM employees
WHERE salary BETWEEN 9000 AND 11000;
-----? Were upper and lower limits included?

--WHERE salary >= 9000 AND salary <=11000;


-- IN    --The forgetten operator (by students)
SELECT city, state_province, country_id
FROM locations
WHERE country_id IN('UK', 'CA');

--WHERE country_id = 'UK' OR country_id = 'CA';


--Like    Uses wildcards:  %  and  _
--percent (%) - any sequence of zero or more characters
--underscore (_) - a single character
SELECT last_name
FROM employees
WHERE last_name LIKE '_o%';

--Which of the following last names could have been returned from the above query?
--1. Sommersmith
--2. Oog
--3. Fong
--4. Mo

--What if you wanted to fine an underscore or an escape?
SELECT last_name, job_id
FROM EMPLOYEES
WHERE job_id LIKE '%_R%' --<<<-- What's wrong?

--WHERE job_id LIKE '%\_R%'


---IS NULL -- IS NOT NULL ---
--You can't test for against null with regular operators - The answer is always null
--So use these instead

SELECT last_name, manager_id
FROM employees
WHERE manager_id IS NULL;


SELECT last_name, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL;


