using System;
using System.Collections.Generic;
using System.Linq;
using System.Management.Instrumentation;
using System.Text;
using System.Threading.Tasks;

namespace FactoryEmployees
{
    class ProductionWorker : Employee
    {
        public ProductionWorker()
        {
            ShiftNumber = 2;
            HourlyPayRate = 12;
            EmployeeNumber = -1;
            EmployeeName = "unknown";
        }

        public ProductionWorker(int employeeNumber, string employeeName,int shiftNumber, double hourlyPayRate) 
            : base (employeeNumber, employeeName)
        {
            ShiftNumber = shiftNumber;
            HourlyPayRate = hourlyPayRate;
        }

        public int ShiftNumber { get; set; } //Shift number should be set to either 1, 2, or 3.
        public double HourlyPayRate { get; set; }

        public override string ToString()
        {
            return "Employee Number: " + EmployeeNumber + "\n" 
                + "Employee Name: " + EmployeeName + "\n" 
                + "Shift Number: " + ShiftNumber + "\n" 
                + "Hourly Pay Rate: " + HourlyPayRate + "\n";
        }
    }
}
