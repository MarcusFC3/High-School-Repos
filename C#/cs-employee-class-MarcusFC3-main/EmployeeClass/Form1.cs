using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Windows.Forms;

namespace EmployeeClass
{
    public partial class Form1 : Form
    {
       
        public Form1()
        {
            InitializeComponent();
        }

        private void btnDisplay_Click(object sender, EventArgs e)
        {
            List<Employee> employeeList = new List<Employee>();

            //All employees are declared using each constructor and placed into a list
            Employee employee1 = new Employee();
            employeeList.Add(employee1);

            Employee employee2 = new Employee(37119, "Mark Jones");
            employeeList.Add(employee2);

            Employee employee3 = new Employee(81774, "Joy Rogers","Manufacturing","Engineer");
            employeeList.Add(employee3);
            //All properties are set for employee1 which used an empty constructor
            employee1.EmployeeID = 47889;
            employee1.Name = "Susan Meyers";
            employee1.Department = "Accounting";
            employee1.Position = "Vice President";
            //The department and position are set for employee2
            employee2.Department = "IT";
            employee2.Position = "Programmer";
            //The foreach loop adds the employee objects to the display list box
            foreach (Employee employee in employeeList) 
            {
                lstDisplay.Items.AddRange(employee.ToString().Split('\n'));
            }
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            lstDisplay.Items.Clear();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
