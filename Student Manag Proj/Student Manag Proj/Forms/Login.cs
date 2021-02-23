using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Student_Manag_Proj.Forms
{
    public partial class form_Login : Form
    {
        public form_Login()
        {
            InitializeComponent();
        }

        private void button_Login_Click(object sender, EventArgs e)
        {
            string id = textbox_ID.Text;
            string pass = textbox_Password.Text;
            if (id == "123" && pass == "123")
            {
                this.Hide();
                var form_MainMenu = new form_MainMenu();
                form_MainMenu.Closed += (s, args) => this.Close();
                form_MainMenu.Show();
            }
        }

        private void button_CancelLogin_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
