# Factory Employees

This project currently contains an Employee class. You may need to modify small parts of the class to complete the assignment as directed.
The Employee class has properties for the following data:  
````
EmployeeNumber (int)
EmployeeName (String)
````


**Create a class named ProductionWorker that inherits from the Employee class.**  
The ProductionWorker class should have these additional properties:  
````
ShiftNumber (int - 1, 2 or 3)
HourlyPayRate (double)
````

A shift supervisor is a salaried employee. In addition to an their annual salaries, the shift supervisor earns a yearly bonus if their shift meets production goals. 
**Create a ShiftSupervisor class that inherits from the Employee class.**  
The ShiftSupervisor class should have these additional properties:
````
AnnualSalary (double)
ProductionBonus (double)
````

A team leader is in hourly paid production worker that leads a small team. In addition to their hourly pay, team leaders earn a fixed monthly bonus.
They are also required to attend extra training throughout the year. **Create a TeamLeader class that inherits from the *ProductionWorker* class.**  
The TeamLeader class should have the following additional properties:  
````
MonthyBonus (double)
TrainingHoursRequired (int)
TrainingHoursAttended (int)
````

All employees must fall into one of the derived roles, ProductionWorker, ShiftSupervisor or TeamLeader. Employees should never be instantiated directly from the Employee class.
**Make the required changes to the Employee class to prevent the creation generic employees.**


**Add each employee to an appropriately typed list. Iterate through the list to display each employee's data in the listbox.**

## Grading Criteria

- Make sure each of the bold items is implimented properly
- Ensure that all classes, peoperties and methods are tested
- Follow proper coding standards and conventions

