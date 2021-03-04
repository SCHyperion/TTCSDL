using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Student_Manag_Proj.Classes;
using System.Data.SqlClient;

namespace Student_Manag_Proj.Forms
{
    public partial class ThemSP : Form
    {
        public ThemSP()
        {
            InitializeComponent();
        }

        private void button_Cancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button_Confirm_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(SQLQuery.source))
            {
                using (SqlCommand cmd = new SqlCommand("SanPham_Them", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@maSP", SqlDbType.VarChar).Value = textbox_MaSP.Text;
                    cmd.Parameters.Add("@tenSP", SqlDbType.NVarChar).Value = textbox_TenSP.Text;
                    cmd.Parameters.Add("@maNhom", SqlDbType.VarChar).Value = textbox_MaNhom.Text;
                    cmd.Parameters.Add("@maNCC", SqlDbType.VarChar).Value = textbox_MaNCC.Text;
                    cmd.Parameters.Add("@giaBan", SqlDbType.BigInt).Value = textbox_GiaBan.Text;
                    cmd.Parameters.Add("@hinhAnh", SqlDbType.VarChar).Value = "anhtest";

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            this.Close();
        }
    }
}
