using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RandomNumberFileWriter
{
    public partial class Form1 : Form
    {
        int numberOfEntries;
        Random rnd =  new Random();
        public Form1()
        {
            InitializeComponent();
        }
        
        private void btnWriteRandomNumbers_Click(object sender, EventArgs e)
        {
            StreamWriter outputFile = null;
            if (int.TryParse(txtTotalNumbersGenerated.Text, out numberOfEntries))
            {
                if (saveDialog.ShowDialog() == DialogResult.OK)
                {
                    try
                    {
                        //open the file
                        outputFile = File.CreateText(saveDialog.FileName);

                        //process the file 
                        for (numberOfEntries = int.Parse(txtTotalNumbersGenerated.Text); numberOfEntries > 0; numberOfEntries--)
                        {
                            int randomNumber = rnd.Next(100) + 1;
                            outputFile.WriteLine(randomNumber.ToString());
                        }
                    }
                    catch (FileNotFoundException)
                    {
                        MessageBox.Show("File not found.");
                    }
                    catch (DirectoryNotFoundException)
                    {
                        MessageBox.Show("Directory not found");
                    }
                    catch (IOException)
                    {
                        MessageBox.Show("IO Error.");
                    }
                    catch (Exception)
                    {
                        MessageBox.Show("Something went wrong.");
                    }
                    finally
                    {
                        //close the file
                        if (outputFile != null)
                        {
                            outputFile.Close();
                        }
                    }
                    MessageBox.Show("Text successfully written");
                } 
            } else { MessageBox.Show("Please enter an integer into the text box"); }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
