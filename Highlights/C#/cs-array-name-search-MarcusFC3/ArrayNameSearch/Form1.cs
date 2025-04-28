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
using System.Xml.Linq;

namespace ArrayNameSearch
{
    public partial class Form1 : Form
    {
        string[] boyNames = new string[200];
        string[] girlNames = new string[200];
        int boyNamePosition;
        int girlNamePosition;
        public Form1()
        {
            InitializeComponent();
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            boyNamePosition = StringArraySearch(name, boyNames);
            girlNamePosition = StringArraySearch(name, girlNames);
            if (boyNamePosition >= 0)
            {
                lstDisplay.Items.Add("The Name " + name + " was found in the boy names list at number " + (boyNamePosition + 1));
            }
            if (girlNamePosition >= 0)
            {
                lstDisplay.Items.Add("The Name " + name + " was found in the girl names list at number " + (girlNamePosition + 1));
            }
            if (boyNamePosition < 0 && girlNamePosition < 0)
            {
                lstDisplay.Items.Add("The Name " + name + " was not found in either list");
            }
        }
        private int StringArraySearch(string name, string[] nameList) 
        {
            int index = 0;
            if(nameList == boyNames) {
                foreach (string boyName in boyNames)
                {
                    index++;
                    if (name == boyName)
                    {
                        return index - 1;
                    }
                }
            }
            
            if (nameList == girlNames) 
            {
                foreach (string girlName in girlNames)
                {
                    index++;
                    if (name == girlName)
                    {
                        return index - 1;
                    }
                }
            }
            return -1;
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            lstDisplay.Items.Clear();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            int index = 0;
            StreamReader outputFile = null;
            try
            {
                outputFile = File.OpenText("../../../BoyNames.txt");

                while (index < boyNames.Length || !outputFile.EndOfStream)
                {
                    boyNames[index] = outputFile.ReadLine();
                    index++;
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
                if(outputFile != null) { outputFile.Close(); }
            }
            
            index = 0;
            try
            {
                outputFile = File.OpenText("../../../GirlNames.txt");

                while (index < girlNames.Length || !outputFile.EndOfStream)
                {
                    girlNames[index] = outputFile.ReadLine();
                    index++;
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
                if (outputFile != null) { outputFile.Close(); } 
            }
            index = 0;
        }
    }
}
