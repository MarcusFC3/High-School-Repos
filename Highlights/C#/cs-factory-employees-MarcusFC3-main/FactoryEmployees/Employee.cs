using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FactoryEmployees
{
    abstract class Employee
    {   
        public Employee()
        {
            EmployeeNumber = 0;
            EmployeeName = "";
        }
        public Employee(int employeeNumber, string employeeName)
        {
            EmployeeNumber = employeeNumber;
            EmployeeName = employeeName;
        }        
        
        public int EmployeeNumber { get; set; }
        public String EmployeeName { get; set; }

        public override string ToString()
        {
            return "Employee Number: " + EmployeeNumber + "\n" 
                + "Employee Name: " + EmployeeName 
                + "\n";
        }
    }

}
