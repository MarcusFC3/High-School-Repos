using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ColorMixer
{

    /*
     * Author: Marcus Jones Jr.
     * Email: 22795@my4county.net
     */

    public partial class Form1 : Form
    {
        private Boolean redSelected = true;
        private Boolean blueSelected = true;
        private Boolean yellowSelected = false;
        public Form1()
        {
            InitializeComponent();
        }
        /**
         * This method will change the background color of the form as a combination of the two colors the user has selected.
         */
        private void btnMix_Click(object sender, EventArgs e)
        {
            if (radFirstRed.Checked || radSecondRed.Checked) // Checks if any red button is selected and changes the associated boolean variable accordingly.
            { 
                redSelected = true; 
            }
            else 
            { 
                redSelected = false; 
            }

            if (radFirstBlue.Checked || radSecondBlue.Checked) // Checks if any blue button is selected and changes the associated boolean variable accordingly.
            { 
                blueSelected = true; 
            }
            else 
            { 
                blueSelected = false; 
            }

            if (radFirstYellow.Checked || radSecondYellow.Checked) // Checks if any yellow button is selected and changes the associated boolean variable accordingly.
            {  
                yellowSelected = true; 
            }
            else 
            { 
                yellowSelected = false;
            }

            /**
             * Using the boolean variables set in the above lines of code the rest of this method determines what the background color of the form
             * will change to.
             */
            if (redSelected)
            {
                if (blueSelected) 
                {
                    BackColor = Color.Purple;
                }
                else if (yellowSelected) 
                {
                    BackColor = Color.Orange;                   
                }
                else
                {
                    BackColor = Color.Red;
                }
            }

            if (blueSelected)
            {
                if (redSelected)
                {
                    BackColor = Color.Purple;
                }
                else if (yellowSelected)
                {
                    BackColor = Color.Green;
                }
                else
                {
                    BackColor = Color.Blue;
                }
            }

            if(yellowSelected)
            {
                if(redSelected)
                {
                    BackColor = Color.Orange;
                } 
                else if (blueSelected)
                { 
                    BackColor = Color.Green;
                }
                else 
                {
                    BackColor = Color.Yellow;
                }
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
