using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;

namespace FactoryEmployees
{
    class ShiftSupervisor : Employee
    {
        public ShiftSupervisor()
        {
            AnnualSalary = 50000;
            ProductionBonus = 0;
        }
        public ShiftSupervisor(int employeeNumber, string employeeName, double annualSalary, double productionBonus) 
            : base (employeeNumber, employeeName )
        {
            AnnualSalary = annualSalary;
            ProductionBonus = productionBonus;
        }

        public double AnnualSalary { get; set; }
        public double ProductionBonus{ get; set; }

        public override string ToString()
        {
            return "Employee Number: " + EmployeeNumber + "\n" 
                + "Employee Name: " + EmployeeName + "\n" 
                + "Annual Salary: " + AnnualSalary + "\n" 
                + "Production Bonus: " + ProductionBonus + "\n";
        }
    }
}
