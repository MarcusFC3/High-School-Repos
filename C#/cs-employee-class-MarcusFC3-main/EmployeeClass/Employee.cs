using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeClass
{
    internal class Employee
    {
        private int employeeID;
        private string name;
        private string department;
        private string position;
        public Employee()  
        { 
            employeeID = 0;
            name = string.Empty;
            department = string.Empty;
            position = string.Empty;
        }
        public Employee(int employeeID, string name) 
        { 
            this.employeeID = employeeID;
            this.name = name;
            department= string.Empty;
            position = string.Empty;
        }
        public Employee(int employeeID, string name, string department, string position) 
        {
            this.employeeID = employeeID;
            this.name = name;
            this.department = department;
            this.position = position;
        }
        public int EmployeeID
        {
            get
            {
                return employeeID;
            }
            set
            {
                employeeID = value;
            }
        }
        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        public string Department
        {
            get { return department; }
            set { department = value; }
        }
        public string Position
        {
            get { return position; }
            set { position = value; }
        }
        public override string ToString()
        {
            return "ID number: " + employeeID + "\n" + " Name: " + name + "\n" + " Department: " + department + "\n" + " Position: " + position + "\n";
        }
    }
}
