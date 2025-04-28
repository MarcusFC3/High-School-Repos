--Database Diagrams - New


--ERROR
--Cannot execute as the database principal because the principal "dbo" does not exist, 
--this type of principal cannot be impersonated, or you do not have permission. 
--(.Net SqlClient Data Provider)


--FIX - Set the DB Owner
---Database right click-->properties-->files-->select database owner-->select [sa]-- ok


--ERROR
--This database does not have one or more of the support objects
--Do you wish to create them?
--YES

--Pick all the tables in Sample_DB
--Look at Relationships and Keys
--What about notation? Crows feet?

--CROSS JOIN--
--Why? 
--1) So we can recognize it. It happens baccident with bad WHERE clauses.
--2) Occasionally useful. Like showing all combinations of size and color for a product.

SELECT last_name, department_name
FROM employees CROSS JOIN departments;


--JOIN ON

SELECT last_name, job_title
FROM employees JOIN jobs
ON (employees.job_id = jobs.job_id);



Table Aliases
--Working with lengthy column and table names can be cumbersome.
--Fortunately, there is a way to shorten the syntax using aliases.
--To distinguish columns that have identical names but reside in different tables, use table aliases.
--A table alias is similar to a column alias; it renames an object within a statement.
--It is created by entering the new name for the table just after the table name in the from-clause.



SELECT last_name, job_title
FROM employees e JOIN jobs j
ON (e.job_id = j.job_id); --job_id would be ambiguous! 


--With WHERE Clause

SELECT last_name, job_title
FROM employees e JOIN jobs j
ON (e.job_id = j.job_id)
WHERE last_name LIKE 'H%';

--ON Clause with non-equality operator
--***Look at diagram***--
--Sometimes you may need to retrieve data from a table that has no corresponding column in another table.
--Suppose we want to know the grade_level for each employees salary.
--The job_grades table does not have a common column with the employees table.
--Using an ON clause allows us to join the two tables

SELECT last_name, salary, grade_level, lowest_sal, highest_sal
FROM employees JOIN job_grades
ON(salary BETWEEN lowest_sal AND highest_sal);


--Three table join
SELECT last_name, department_name AS "Department", city
FROM employees e 
	JOIN departments d
		ON (e.department_id = d.department_id)
	JOIN locations l 
		ON (d.location_id =l.location_id);



---OUTER JOINS---
--When you want to see all the values from a table, not just the matches.
--Look at Grant - No Department

SELECT e.last_name, d.department_id, d.department_name
FROM employees e LEFT OUTER JOIN departments d
ON (e.department_id = d.department_id);


--Look at Contracting DepartmentSELECT e.last_name, d.department_id, d.department_name
FROM employees e RIGHT OUTER JOIN departments d
ON (e.department_id = d.department_id);


SELECT e.last_name, d.department_id, d.department_name
FROM employees e FULL OUTER JOIN departments d
ON (e.department_id = d.department_id);


--Construct a join to display a list of employees, their current job_id and any previous jobs they may have held.
--The job_history table contains details of an employee's previous jobs.

SELECT last_name, e.job_id AS "Job", jh.job_id AS "Old job", end_date
FROM employees e LEFT OUTER JOIN job_history jh
ON(e.employee_id = jh.employee_id);


--SELF JOIN--
--Look at the employee table - relationship to itself
--Notice the aliases for the same table

SELECT worker.last_name + ' works for ' + manager.last_name
AS "Works for"
FROM employees worker JOIN employees manager
ON (worker.manager_id = manager.employee_id);


SELECT worker.employee_id, worker.last_name, worker.manager_id, manager.last_name
AS "Manager name"
FROM employees worker JOIN employees manager
ON (worker.manager_id = manager.employee_id);







