namespace FinalProject
{
    partial class Main
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
            this.newOrderBut = new System.Windows.Forms.Button();
            this.allOrder = new System.Windows.Forms.Button();
            this.historyButt = new System.Windows.Forms.Button();
            this.helloLabel = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // newOrderBut
            // 
            this.newOrderBut.Location = new System.Drawing.Point(77, 338);
            this.newOrderBut.Name = "newOrderBut";
            this.newOrderBut.Size = new System.Drawing.Size(133, 56);
            this.newOrderBut.TabIndex = 0;
            this.newOrderBut.Text = "New Order";
            this.newOrderBut.UseVisualStyleBackColor = true;
            // 
            // allOrder
            // 
            this.allOrder.Location = new System.Drawing.Point(328, 338);
            this.allOrder.Name = "allOrder";
            this.allOrder.Size = new System.Drawing.Size(132, 55);
            this.allOrder.TabIndex = 1;
            this.allOrder.Text = "All Order";
            this.allOrder.UseVisualStyleBackColor = true;
            // 
            // historyButt
            // 
            this.historyButt.Location = new System.Drawing.Point(585, 338);
            this.historyButt.Name = "historyButt";
            this.historyButt.Size = new System.Drawing.Size(133, 56);
            this.historyButt.TabIndex = 2;
            this.historyButt.Text = "History";
            this.historyButt.UseVisualStyleBackColor = true;
            // 
            // helloLabel
            // 
            this.helloLabel.AutoSize = true;
            this.helloLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.helloLabel.Location = new System.Drawing.Point(208, 149);
            this.helloLabel.Name = "helloLabel";
            this.helloLabel.Size = new System.Drawing.Size(76, 29);
            this.helloLabel.TabIndex = 3;
            this.helloLabel.Text = "Hello,";
            // 
            // Main
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.helloLabel);
            this.Controls.Add(this.historyButt);
            this.Controls.Add(this.allOrder);
            this.Controls.Add(this.newOrderBut);
            this.Name = "Main";
            this.Text = "Main Menu";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button newOrderBut;
        private System.Windows.Forms.Button allOrder;
        private System.Windows.Forms.Button historyButt;
        private System.Windows.Forms.Label helloLabel;
    }
}