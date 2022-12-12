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
            this.usernamelb.Location = new System.Drawing.Point(116, 150);
            this.usernamelb.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.usernamelb.Name = "usernamelb";
            this.usernamelb.Size = new System.Drawing.Size(76, 16);
            this.usernamelb.TabIndex = 0;
            this.usernamelb.Text = "Username :";
            // 
            // passwordlb
            // 
            this.passwordlb.AutoSize = true;
            this.passwordlb.Location = new System.Drawing.Point(116, 215);
            this.passwordlb.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.passwordlb.Name = "passwordlb";
            this.passwordlb.Size = new System.Drawing.Size(73, 16);
            this.passwordlb.TabIndex = 1;
            this.passwordlb.Text = "Password :";
            // 
            // usernametb
            // 
            this.usernametb.Location = new System.Drawing.Point(197, 146);
            this.usernametb.Margin = new System.Windows.Forms.Padding(4);
            this.usernametb.MaxLength = 16;
            this.usernametb.Name = "usernametb";
            this.usernametb.Size = new System.Drawing.Size(249, 22);
            this.usernametb.TabIndex = 2;
            // 
            // passwordtb
            // 
            this.passwordtb.Location = new System.Drawing.Point(197, 212);
            this.passwordtb.Margin = new System.Windows.Forms.Padding(4);
            this.passwordtb.MaxLength = 16;
            this.passwordtb.Name = "passwordtb";
            this.passwordtb.PasswordChar = '*';
            this.passwordtb.Size = new System.Drawing.Size(249, 22);
            this.passwordtb.TabIndex = 3;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(197, 316);
            this.button1.Margin = new System.Windows.Forms.Padding(4);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(163, 49);
            this.button1.TabIndex = 4;
            this.button1.Text = "Login";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // LoginPage
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(595, 470);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.passwordtb);
            this.Controls.Add(this.usernametb);
            this.Controls.Add(this.passwordlb);
            this.Controls.Add(this.usernamelb);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "LoginPage";
            this.Text = "Login";
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

