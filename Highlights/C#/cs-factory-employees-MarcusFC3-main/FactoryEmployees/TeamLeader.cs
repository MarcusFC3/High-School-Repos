using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FactoryEmployees
{
    class TeamLeader : ProductionWorker
    {
        public TeamLeader() 
        {
            MonthyBonus = 0;
            TrainingHoursRequired = 16;
            TrainingHoursAttended = 0;
        }

        public TeamLeader(int employeeNumber, string employeeName, int shiftNumber, double hourlyPayRate, double monthyBonus, int trainingHoursRequired, int trainingHoursAttended)
           : base(employeeNumber, employeeName, shiftNumber, hourlyPayRate)
        {
            MonthyBonus = monthyBonus;
            TrainingHoursRequired = trainingHoursRequired;
            TrainingHoursAttended = trainingHoursAttended;
        }

        public double MonthyBonus {  get; set; }
        public int TrainingHoursRequired {  get; set; }
        public int TrainingHoursAttended { get; set; }

        public override string ToString()
        {
            return "Employee Number: " + EmployeeNumber + "\n" 
                + "Employee Name: " + EmployeeName + "\n" 
                + "Shift Number: " + ShiftNumber + "\n" 
                + "Hourly Pay Rate: " + HourlyPayRate + "\n"
                + "Monthly Bonus: " + MonthyBonus + "\n"
                + "Training Hours Required: " + TrainingHoursRequired + "\n"
                + "Training Hours Attended: " + TrainingHoursAttended + "\n";
        }
    }
}
