using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FinalProject
{
    public partial class Main : Form
    {
        Accountant user = LoginPage.user;
        public Main()
        {
            InitializeComponent();
        }

        private void Main_Load(object sender, EventArgs e)
        {
            helloLabel.Text += user.name;
        }

        private void newOrderBut_Click(object sender, EventArgs e)
        {
            NewOrder newOrderPage = new NewOrder();
            newOrderPage.Show();
        }

    }
}
