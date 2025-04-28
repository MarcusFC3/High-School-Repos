using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace ListNameSearch
{
    public partial class Form1 : Form
    {
        private List<string> boyNames = new List<string>();
        private List<string> girlNames = new List<string>();
        private int boyNamePosition;
        private int girlNamePosition;
        public Form1()
        {
            InitializeComponent();
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            StreamReader outputFile = null;
            try
            {
                outputFile = File.OpenText("../../../BoyNames.txt");

                while (!outputFile.EndOfStream)
                {
                    boyNames.Add(outputFile.ReadLine());
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

            try
            {
                outputFile = File.OpenText("../../../GirlNames.txt");

                while (!outputFile.EndOfStream)
                {
                    girlNames.Add(outputFile.ReadLine());
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
        }
        private void btnSearch_Click(object sender, EventArgs e)
        {
           string nameSearched = txtName.Text;
           boyNamePosition = boyNames.IndexOf(nameSearched);
           girlNamePosition = girlNames.IndexOf(nameSearched);

           if(boyNamePosition != -1) { lstDisplay.Items.Add("The name " + nameSearched + " was found in the boys name list at position " + (boyNamePosition + 1)); }
           if(girlNamePosition != -1) { lstDisplay.Items.Add("The name " + nameSearched + " was found in the girls name list at position " + (girlNamePosition + 1)); }
           if(boyNamePosition == -1 && girlNamePosition == -1) { lstDisplay.Items.Add("The name " + nameSearched + " was not found in either list"); }
        }
        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        private void btnClear_Click(object sender, EventArgs e)
        {
            lstDisplay.Items.Clear();
        }
    }
}
