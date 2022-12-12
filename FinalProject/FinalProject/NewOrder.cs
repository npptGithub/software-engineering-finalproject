using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FinalProject
{
    public partial class NewOrder : Form
    {
        
        SqlConnection conn;
        Accountant user = LoginPage.user;
        int status = 0;
        public NewOrder()
        {
            InitializeComponent();
        }

        private void lastDatePicker_ValueChanged(object sender, EventArgs e)
        {
            parseDataSQL();
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            parseDataSQL();
        }

        private void customer_TextChanged(object sender, EventArgs e)
        {
            parseDataSQL();
        }

        private void NewOrder_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection();
            parseDataSQL();
        }

        private void parseDataSQL()
        {
            String last , first , dataSQL,table="";
            last = dateTimePicker1.Value.Year + "/" + dateTimePicker1.Value.Month + "/" + dateTimePicker1.Value.Day;
            first = lastDatePicker.Value.Year + "/" + lastDatePicker.Value.Month + "/" + lastDatePicker.Value.Day;
            switch (status)
            {
                case 0:
                    {
                        table = "Order";
                        break;
                    }
                case 1:
                    {
                        table = "";
                        break;
                    }
                case 2:
                    {
                        table = "";
                        break;
                    }
                
            }
            if (customer.Text.Length==0)
                dataSQL = "select * from Order where (exportDay) between '" + first + "' and '" + last + "')";
            else
                dataSQL = "select * from Order where cusID in (select name from Customer where name = '"+ customer.Text + "' and(exportDay) between '" + first + "' and '" + last + "')";
            SqlCommand cmd = new SqlCommand(dataSQL, conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                customerData.DataSource = dt;
            }
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            status = 1;
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            status = 2;
        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {
            status = 3;
        }
    }
}
