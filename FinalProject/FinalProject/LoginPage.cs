using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FinalProject
{
    public partial class LoginPage : Form
    {
        String strConn = ConfigurationManager.ConnectionStrings["ConnStr1"].ConnectionString;
        SqlConnection conn;
        public LoginPage()
        {
            InitializeComponent();
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(strConn);
            conn.Open();
           
        }

        private void button1_Click(object sender, EventArgs e)
        {   bool block = usernamelb.Text.Length>0 && passwordlb.Text.Length > 0;
            if (block)
            {
                String query = "Select userID from LoginAccount where username = '" + usernametb.Text + "' and password = '" + passwordtb.Text + "'";
                Console.WriteLine(query);
                SqlCommand sqlCommand = new SqlCommand(query, conn);
                SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    this.Visible = false;

                }
                else MessageBox.Show("Error", "Wrong username or password");

                
            }
            else
                MessageBox.Show("Error", "Missing username or password");

        }

    }
}
