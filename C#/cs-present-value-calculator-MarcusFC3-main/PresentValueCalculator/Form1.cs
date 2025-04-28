using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PresentValueCalculator
{
    public partial class Form1 : Form
    {
        private double futureValue;
        private double annualInterestRate;
        private int years;
        public Form1()
        {
            InitializeComponent();
        }

        /**
         * This method checks for valid numbers in each text box, returning true if each text box contains a vaild number.
         */
        public Boolean IsValid()
        {
            Boolean isValid = true;
            if (!double.TryParse(txtFuture.Text, out futureValue))
            {
                MessageBox.Show("Please enter a valid number in the future value text box.");
                isValid = false;
            }
            else { futureValue = double.Parse(txtFuture.Text); }
            
            if (!double.TryParse(txtRate.Text, out annualInterestRate))
            {
                MessageBox.Show("Please enter a valid number in the interest rate text box.");
                isValid = false;
            }
            else { annualInterestRate = double.Parse(txtRate.Text) * 0.01; }
                    
            if (!int.TryParse(txtYears.Text, out years))
            {
                MessageBox.Show("Please enter a valid number in the years text box.");
                isValid = false;
            }
            else { years = int.Parse(txtYears.Text); }

            return isValid;
        }

        /**
         * This method calculates the amount of money the user would need to deposit today to achieve their specified future value 
         * using a given interest rate and number of years
         */
        public double PresentValue(double futureValue, double annualInterestRate, int years) 
        {
            double presentValue = futureValue / Math.Pow(annualInterestRate + 1, years);
            return presentValue;
        }

        /**
         * This method sets the text property of the display label to the result of the present value method.
         */
        public void DisplayOutput(double presentValue) 
        {
            lblDisplay.Text = "You must deposit " + presentValue.ToString("c") + " today.";
        }

        /**
         * This method will display the amount of money the user would need to deposit today to achieve their specified future value 
         * using a given interest rate and number of years if there is no invalid user input.
         */
        private void btnCalculate_Click(object sender, EventArgs e)
        {
            if (IsValid()) 
            {
               double results = PresentValue(futureValue, annualInterestRate, years);
               DisplayOutput(results); 
            }
        }

        /**
         * This method sets the text property of each text box to an empty string.
         */
        private void btnClear_Click(object sender, EventArgs e)
        {
            txtFuture.Text = "";
            txtRate.Text = "";
            txtYears.Text = "";
        }

        /**
         * This method closes the form.
         */
        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
