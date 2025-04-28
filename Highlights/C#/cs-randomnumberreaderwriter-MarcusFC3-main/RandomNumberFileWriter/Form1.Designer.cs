
namespace RandomNumberFileWriter
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.txtTotalNumbersGenerated = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnWriteRandomNumbers = new System.Windows.Forms.Button();
            this.btnExit = new System.Windows.Forms.Button();
            this.saveDialog = new System.Windows.Forms.SaveFileDialog();
            this.SuspendLayout();
            // 
            // txtTotalNumbersGenerated
            // 
            this.txtTotalNumbersGenerated.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtTotalNumbersGenerated.Location = new System.Drawing.Point(73, 73);
            this.txtTotalNumbersGenerated.Name = "txtTotalNumbersGenerated";
            this.txtTotalNumbersGenerated.Size = new System.Drawing.Size(100, 20);
            this.txtTotalNumbersGenerated.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.Location = new System.Drawing.Point(12, 19);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(222, 51);
            this.label1.TabIndex = 1;
            this.label1.Text = "Please enter a number below. This will dictate how many random numbers are writte" +
    "n to a text file.";
            // 
            // btnWriteRandomNumbers
            // 
            this.btnWriteRandomNumbers.Location = new System.Drawing.Point(106, 119);
            this.btnWriteRandomNumbers.Name = "btnWriteRandomNumbers";
            this.btnWriteRandomNumbers.Size = new System.Drawing.Size(128, 23);
            this.btnWriteRandomNumbers.TabIndex = 2;
            this.btnWriteRandomNumbers.Text = "Write random numbers";
            this.btnWriteRandomNumbers.UseVisualStyleBackColor = true;
            this.btnWriteRandomNumbers.Click += new System.EventHandler(this.btnWriteRandomNumbers_Click);
            // 
            // btnExit
            // 
            this.btnExit.Location = new System.Drawing.Point(12, 119);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(75, 23);
            this.btnExit.TabIndex = 3;
            this.btnExit.Text = "E&xit";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // saveDialog
            // 
            this.saveDialog.DefaultExt = "txt";
            this.saveDialog.Filter = "Text files (*.txt)|*.txt|All files (*.*)|*.*";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(246, 154);
            this.Controls.Add(this.btnExit);
            this.Controls.Add(this.btnWriteRandomNumbers);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtTotalNumbersGenerated);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtTotalNumbersGenerated;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnWriteRandomNumbers;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.SaveFileDialog saveDialog;
    }
}

