using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FactoryEmployees
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnCreate_Click(object sender, EventArgs e)
        {
            ProductionWorker emptyProductionWorker = new ProductionWorker();
            emptyProductionWorker.EmployeeName = "Janet Jackson";
            emptyProductionWorker.EmployeeNumber = 1;
            emptyProductionWorker.ShiftNumber = 2;
            emptyProductionWorker.HourlyPayRate = 12;
            listBox1.Items.AddRange(emptyProductionWorker.ToString().Split('\n'));

            ProductionWorker fullProductionWorker = new ProductionWorker(2, "Micheal Jackson", 3, 13.25);
            listBox1.Items.AddRange(fullProductionWorker.ToString().Split('\n'));

            ShiftSupervisor emptyShiftSupervisor = new ShiftSupervisor();
            emptyShiftSupervisor.EmployeeNumber = 3;
            emptyShiftSupervisor.EmployeeName = "Jack Winnaberg";
            emptyShiftSupervisor.AnnualSalary = 54000;
            emptyShiftSupervisor.ProductionBonus = 2000;
            listBox1.Items.AddRange(emptyShiftSupervisor.ToString().Split('\n'));

            ShiftSupervisor fullShiftSupervisor = new ShiftSupervisor(4, "Saul Goodman", 48000, 0);
            listBox1.Items.AddRange(fullShiftSupervisor.ToString().Split('\n'));

            TeamLeader emptyTeamLeader = new TeamLeader();
            emptyTeamLeader.EmployeeNumber = 5;
            emptyTeamLeader.EmployeeName = "Walter White";
            emptyTeamLeader.ShiftNumber = 1;
            emptyTeamLeader.HourlyPayRate = 20.25;
            emptyTeamLeader.MonthyBonus = 1000;
            emptyTeamLeader.TrainingHoursRequired = 20;
            emptyTeamLeader.TrainingHoursAttended = 12;
            listBox1.Items.AddRange(emptyTeamLeader.ToString().Split('\n'));

            TeamLeader fullTeamLeader = new TeamLeader(6, "Great Heisenberg", 3, 25, 3000, 30, 15);
            listBox1.Items.AddRange(fullTeamLeader.ToString().Split('\n'));

        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
