namespace FinalProject
{
    partial class LoginPage
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
            this.usernamelb = new System.Windows.Forms.Label();
            this.passwordlb = new System.Windows.Forms.Label();
            this.usernametb = new System.Windows.Forms.TextBox();
            this.passwordtb = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // usernamelb
            // 
            this.usernamelb.AutoSize = true;
            this.usernamelb.Location = new System.Drawing.Point(87, 122);
            this.usernamelb.Name = "usernamelb";
            this.usernamelb.Size = new System.Drawing.Size(61, 13);
            this.usernamelb.TabIndex = 0;
            this.usernamelb.Text = "Username :";
            // 
            // passwordlb
            // 
            this.passwordlb.AutoSize = true;
            this.passwordlb.Location = new System.Drawing.Point(87, 175);
            this.passwordlb.Name = "passwordlb";
            this.passwordlb.Size = new System.Drawing.Size(59, 13);
            this.passwordlb.TabIndex = 1;
            this.passwordlb.Text = "Password :";
            // 
            // usernametb
            // 
            this.usernametb.Location = new System.Drawing.Point(148, 119);
            this.usernametb.MaxLength = 16;
            this.usernametb.Name = "usernametb";
            this.usernametb.Size = new System.Drawing.Size(188, 20);
            this.usernametb.TabIndex = 2;
            // 
            // passwordtb
            // 
            this.passwordtb.Location = new System.Drawing.Point(148, 172);
            this.passwordtb.MaxLength = 16;
            this.passwordtb.Name = "passwordtb";
            this.passwordtb.PasswordChar = '*';
            this.passwordtb.Size = new System.Drawing.Size(188, 20);
            this.passwordtb.TabIndex = 3;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(148, 265);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(122, 40);
            this.button1.TabIndex = 4;
            this.button1.Text = "Login";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(455, 382);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.passwordtb);
            this.Controls.Add(this.usernametb);
            this.Controls.Add(this.passwordlb);
            this.Controls.Add(this.usernamelb);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label usernamelb;
        private System.Windows.Forms.Label passwordlb;
        private System.Windows.Forms.TextBox usernametb;
        private System.Windows.Forms.TextBox passwordtb;
        private System.Windows.Forms.Button button1;
    }
}

