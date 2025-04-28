using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PenniesForPay
{
    public partial class Form1 : Form
    {
        private int daysWorked;
        private int daysCounted = 1;
        private double dailyPay = 0.01;
        private double totalPay = 0;
        public Form1()
        {
            InitializeComponent();
        }
        /**
         * This method will begin to calculate and display Susan's pay over the amount of days the user inputted into the text box.
         */
        private void btnCalculate_Click(object sender, EventArgs e)
        {  
            if (int.TryParse(txtDays.Text,out daysWorked))
            {
                if (int.Parse(txtDays.Text) >= 0)
                {
                    dailyPay = 0.01;
                    totalPay = 0;
                    daysWorked = 0;
                    daysCounted = 1;
                    for (daysWorked = int.Parse(txtDays.Text); daysWorked > 0; daysWorked--)
                    {
                        lstDisplay.Items.Add("Day:" + "\t" + daysCounted + "\t" + "Pay:" + "\t" + dailyPay.ToString("c"));
                        totalPay = totalPay + dailyPay;
                        dailyPay = dailyPay * 2;
                        daysCounted++;
                    }
                    lstDisplay.Items.Add(totalPay.ToString("c") + " was earned over " + (daysCounted - 1) + " days.");
                }
                else
                {
                    MessageBox.Show("Please enter a positive number of days worked.");
                }
            }
            else
            {
                MessageBox.Show("Please enter a number in the number of days worked text box.");
            }
        }
        /**
         * This method removes all current list items.
         */
        private void btnClear_Click(object sender, EventArgs e)
        {
            lstDisplay.Items.Clear();
        }
        /**
         * This button allows users to exit the form.
         */
        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
