using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.LinkLabel;

namespace RandomNumberFileReader
{
    public partial class Form1 : Form
    {
        private int quantity = 0;
        private int total = 0;
        private double average;
        public Form1()
        {
            InitializeComponent();
        }

        private void btnRead_Click(object sender, EventArgs e)
        {
            StreamReader inputFile = null;
            if (openFile.ShowDialog() == DialogResult.OK)
            {

                try
                {
                    //open the file
                    inputFile = File.OpenText(openFile.FileName);

                    //process the file
                    while (!inputFile.EndOfStream)
                    {
                        string line = inputFile.ReadLine();
                        lstResults.Items.Add(line);
                        int number = int.Parse(line);
                        quantity = quantity + 1;
                        total = number + total;
                    }
                    average = total / (double)quantity;
                    lstResults.Items.Add("Total:" + "\t" + total.ToString());
                    lstResults.Items.Add("Quantity:" + "\t" + quantity.ToString());
                    lstResults.Items.Add("Average:" + "\t" + average.ToString("n3"));
                }
                catch (FileNotFoundException)
                {
                    MessageBox.Show("File not found.");
                }
                catch (DirectoryNotFoundException)
                {
                    MessageBox.Show("Directory not found");
                }
                catch (OutOfMemoryException)
                {
                    MessageBox.Show("Out Of Memory Error.");
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
                    if (inputFile != null)
                    {
                        inputFile.Close();
                    }
                }
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();   
        }
    }
}
