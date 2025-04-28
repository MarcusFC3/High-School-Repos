using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WordSeparator
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        /**
         * This method displays the results of the Pascal Convert method inside of the output label.
         */
        private void btnSeparate_Click(object sender, EventArgs e)
        {
            lblOutput.Text = PascalConvert(txtInput.Text);
        }
        /**
        * This method is resposible for seperating the words in a string types in pascal case.
        */
        private string PascalConvert(string pascalCase)
        {
            int index = 1;
            string seperatedWords = char.ToString(pascalCase[0]);
            while (index <= pascalCase.Length - 1)
            {
                if (char.IsUpper(pascalCase[index])) 
                {
                    seperatedWords += " " + char.ToLower(pascalCase[index]);
                }
                else { seperatedWords += pascalCase[index]; }

                index++;
            }
        return seperatedWords;
        }
        /**
         * This method clears the text field of the input textbox and output label.
         */
        private void btnClear_Click(object sender, EventArgs e)
        {
            lblOutput.Text = "";
            txtInput.Text = "";
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
