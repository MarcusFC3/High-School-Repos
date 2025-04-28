













VOCAB
Cross Join
Full Outer Join
Outer Join
Left Outer Join
Right Outer Join
Inner Join

SQL
1.
SELECT department_name, city
FROM DEPARTMENTS CROSS JOIN LOCATIONS

2.
SELECT department_name, city, state_province,postal_code
FROM DEPARTMENTS JOIN LOCATIONS 
	ON (DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID)

3.
SELECT department_name Department, country_Name Country, city City, state_province State, postal_code 'Postal Code'
FROM DEPARTMENTS JOIN LOCATIONS
	ON (DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID)
	JOIN COUNTRIES
	ON (LOCATIONS.Country_ID = Countries.Country_id)

4.
SELECT first_name, last_name, department_name
FROM EMPLOYEES LEFT OUTER JOIN DEPARTMENTS
	ON (EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID)

5.
SELECT first_name, last_name, department_name
FROM EMPLOYEES RIGHT OUTER JOIN DEPARTMENTS
	ON (EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID)

6.
SELECT first_name, last_name, department_name
FROM EMPLOYEES FULL OUTER JOIN DEPARTMENTS
	ON (EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID)

7.
SELECT emp.last_name Employee, emp.employee_id Emp#, manager.last_name Manager, manager.employee_id Mgr#
FROM EMPLOYEES emp JOIN EMPLOYEES manager
	ON (emp.Manager_ID = manager.EMPLOYEE_ID)

8.
SELECT emp.last_name Employee, emp.employee_id Emp#, manager.last_name Manager, manager.employee_id Mgr#
FROM EMPLOYEES emp LEFT OUTER JOIN EMPLOYEES manager
	ON (emp.Manager_ID = manager.EMPLOYEE_ID)
	ORDER BY emp.last_name 

9.
SELECT emp.first_name + ' ' + emp.last_name as 'Employee',emp.HIRE_DATE as 'Emp Hired', mgr .first_name + ' ' + mgr.last_name as 'Manager',mgr.HIRE_DATE as 'Mgr Hired'
FROM EMPLOYEES emp JOIN EMPLOYEES mgr
	ON (emp.MANAGER_ID = mgr.EMPLOYEE_ID)
WHERE emp.HIRE_DATE < mgr.HIRE_DATE

