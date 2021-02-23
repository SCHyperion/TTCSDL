using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Student_Manag_Proj.Forms;
using Student_Manag_Proj.Classes;
using Student_Manag_Proj.User_Controls;

namespace Student_Manag_Proj
{
    public partial class form_MainMenu : Form
    {
        public form_MainMenu()
        {
            InitializeComponent();
        }

        private void menuitem_SanPham_All_Click(object sender, EventArgs e)
        {
            panel_Main.Controls.Clear();
            uc_ListSanPham uc = new uc_ListSanPham();
            panel_Main.Controls.Add(uc);
            uc.Dock = DockStyle.Fill;
        }

        private void menuitem_SanPham_SearchName_Click(object sender, EventArgs e)
        {

        }

        private void menuitem_SanPham_SearchPrice_Click(object sender, EventArgs e)
        {

        }

        private void menuitem_SanPham_SearchSupplier_Click(object sender, EventArgs e)
        {

        }

        private void menuitem_KhachHang_All_Click(object sender, EventArgs e)
        {

        }

        private void menuitem_KhachHang_SearchName_Click(object sender, EventArgs e)
        {

        }

        private void menuitem_NhanVien_All_Click(object sender, EventArgs e)
        {

        }

        private void menuitem_NhanVien_SearchName_Click(object sender, EventArgs e)
        {

        }

        private void menuitem_NhanVien_SearchSalary_Click(object sender, EventArgs e)
        {

        }

        private void menuitem_ThongKe_SPBanTrongNgay_Click(object sender, EventArgs e)
        {

        }

        private void menuitem_ThongKe_SPBanTrongThoiGian_Click(object sender, EventArgs e)
        {

        }

        private void menuitem_ThongKe_DoanhThuNgay_Click(object sender, EventArgs e)
        {

        }

        private void menuitem_ThongKe_DoanhThuTrongThoiGian_Click(object sender, EventArgs e)
        {

        }

        private void menuitem_ThongKe_ListHoaDon_Click(object sender, EventArgs e)
        {

        }

        private void menuitem_Help_Click(object sender, EventArgs e)
        {

        }
    }
}
