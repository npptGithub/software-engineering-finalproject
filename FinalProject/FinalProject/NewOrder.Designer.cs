namespace FinalProject
{
    partial class NewOrder
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
            this.customerData = new System.Windows.Forms.DataGridView();
            this.customlb = new System.Windows.Forms.Label();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.lastDatePicker = new System.Windows.Forms.DateTimePicker();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.customer = new System.Windows.Forms.TextBox();
            this.radioButton1 = new System.Windows.Forms.RadioButton();
            this.radioButton2 = new System.Windows.Forms.RadioButton();
            this.radioButton3 = new System.Windows.Forms.RadioButton();
            this.noteType = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.customerData)).BeginInit();
            this.SuspendLayout();
            // 
            // customerData
            // 
            this.customerData.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.customerData.Location = new System.Drawing.Point(12, 187);
            this.customerData.Name = "customerData";
            this.customerData.RowHeadersWidth = 51;
            this.customerData.RowTemplate.Height = 24;
            this.customerData.Size = new System.Drawing.Size(776, 251);
            this.customerData.TabIndex = 0;
            // 
            // customlb
            // 
            this.customlb.AutoSize = true;
            this.customlb.Location = new System.Drawing.Point(196, 131);
            this.customlb.Name = "customlb";
            this.customlb.Size = new System.Drawing.Size(64, 16);
            this.customlb.TabIndex = 1;
            this.customlb.Text = "Customer";
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dateTimePicker1.Location = new System.Drawing.Point(91, 29);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(200, 22);
            this.dateTimePicker1.TabIndex = 2;
            this.dateTimePicker1.ValueChanged += new System.EventHandler(this.dateTimePicker1_ValueChanged);
            // 
            // lastDatePicker
            // 
            this.lastDatePicker.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.lastDatePicker.Location = new System.Drawing.Point(469, 28);
            this.lastDatePicker.Name = "lastDatePicker";
            this.lastDatePicker.Size = new System.Drawing.Size(200, 22);
            this.lastDatePicker.TabIndex = 3;
            this.lastDatePicker.ValueChanged += new System.EventHandler(this.lastDatePicker_ValueChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(34, 33);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 16);
            this.label1.TabIndex = 4;
            this.label1.Text = "From :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(422, 33);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(27, 16);
            this.label2.TabIndex = 5;
            this.label2.Text = "To:";
            // 
            // customer
            // 
            this.customer.Location = new System.Drawing.Point(297, 131);
            this.customer.Name = "customer";
            this.customer.Size = new System.Drawing.Size(179, 22);
            this.customer.TabIndex = 6;
            this.customer.TextChanged += new System.EventHandler(this.customer_TextChanged);
            // 
            // radioButton1
            // 
            this.radioButton1.AutoSize = true;
            this.radioButton1.Location = new System.Drawing.Point(598, 95);
            this.radioButton1.Name = "radioButton1";
            this.radioButton1.Size = new System.Drawing.Size(58, 20);
            this.radioButton1.TabIndex = 7;
            this.radioButton1.TabStop = true;
            this.radioButton1.Text = "New.";
            this.radioButton1.UseVisualStyleBackColor = true;
            this.radioButton1.CheckedChanged += new System.EventHandler(this.radioButton1_CheckedChanged);
            // 
            // radioButton2
            // 
            this.radioButton2.AutoSize = true;
            this.radioButton2.Location = new System.Drawing.Point(598, 121);
            this.radioButton2.Name = "radioButton2";
            this.radioButton2.Size = new System.Drawing.Size(99, 20);
            this.radioButton2.TabIndex = 8;
            this.radioButton2.TabStop = true;
            this.radioButton2.Text = "In Progress.";
            this.radioButton2.UseVisualStyleBackColor = true;
            this.radioButton2.CheckedChanged += new System.EventHandler(this.radioButton2_CheckedChanged);
            // 
            // radioButton3
            // 
            this.radioButton3.AutoSize = true;
            this.radioButton3.Location = new System.Drawing.Point(598, 143);
            this.radioButton3.Name = "radioButton3";
            this.radioButton3.Size = new System.Drawing.Size(66, 20);
            this.radioButton3.TabIndex = 9;
            this.radioButton3.TabStop = true;
            this.radioButton3.Text = "Finish.";
            this.radioButton3.UseVisualStyleBackColor = true;
            this.radioButton3.CheckedChanged += new System.EventHandler(this.radioButton3_CheckedChanged);
            // 
            // noteType
            // 
            this.noteType.FormattingEnabled = true;
            this.noteType.Items.AddRange(new object[] {
            "Recieve Note",
            "Delivery Note"});
            this.noteType.Location = new System.Drawing.Point(91, 70);
            this.noteType.Name = "noteType";
            this.noteType.Size = new System.Drawing.Size(121, 24);
            this.noteType.TabIndex = 10;
            // 
            // NewOrder
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.noteType);
            this.Controls.Add(this.radioButton3);
            this.Controls.Add(this.radioButton2);
            this.Controls.Add(this.radioButton1);
            this.Controls.Add(this.customer);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lastDatePicker);
            this.Controls.Add(this.dateTimePicker1);
            this.Controls.Add(this.customlb);
            this.Controls.Add(this.customerData);
            this.Name = "NewOrder";
            this.Text = "NewOrder";
            this.Load += new System.EventHandler(this.NewOrder_Load);
            ((System.ComponentModel.ISupportInitialize)(this.customerData)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView customerData;
        private System.Windows.Forms.Label customlb;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.DateTimePicker lastDatePicker;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox customer;
        private System.Windows.Forms.RadioButton radioButton1;
        private System.Windows.Forms.RadioButton radioButton2;
        private System.Windows.Forms.RadioButton radioButton3;
        private System.Windows.Forms.ComboBox noteType;
    }
}