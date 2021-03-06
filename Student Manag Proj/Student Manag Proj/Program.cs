using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using Student_Manag_Proj.Classes;
using System.Data;
using System.Data.SqlClient;

namespace Student_Manag_Proj
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new form_MainMenu());
            //Application.Run(new Forms.DanhSachKH());

            //SQLQuery connect = new SQLQuery();
            //connect.Connect();
            //if (connect.checkConnection()) System.Windows.Forms.MessageBox.Show("Kết nối thành công");
            //else System.Windows.Forms.MessageBox.Show("Kết nối không thành công");
        }
    }
}
