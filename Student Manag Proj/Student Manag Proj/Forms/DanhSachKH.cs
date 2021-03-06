using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Student_Manag_Proj.Forms
{
    public partial class DanhSachKH : Form
    {
        string connectionString = @"Data Source=DESKTOP-L67U4QK;Initial Catalog=CuaHangTienLoi;Integrated Security=True";
        public DanhSachKH()
        {
            InitializeComponent();
        }
        DataSet GetKH()
        {
            DataSet data = new DataSet();
            string query = "SELECT * FROM KhachHang";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
                adapter.Fill(data);

                connection.Close();
            }
            return data;
        }
        private void DanhSachKH_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = GetKH().Tables[0];
            dataGridView1.Refresh();
        }
    }
}
