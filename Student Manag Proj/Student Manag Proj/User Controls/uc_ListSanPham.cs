using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Student_Manag_Proj.Classes;
using System.Data.SqlClient;
using System.IO;

namespace Student_Manag_Proj.User_Controls
{
    public partial class uc_ListSanPham : UserControl
    {
        List<SanPham> listSP = new List<SanPham>();
        public uc_ListSanPham()
        {
            InitializeComponent();
        }
        void init_Data()
        {
            SQLQuery query = new SQLQuery();
            query.Connect();
            if (query.checkConnection())
            {
                // init image list
                DirectoryInfo dir = new DirectoryInfo(@"D:\TTCSDL\TTCSDL\Img_ListSanPham");
                foreach (FileInfo file in dir.GetFiles())
                {
                    try
                    {
                        this.imageList1.Images.Add(Image.FromFile(file.FullName));
                    }
                    catch
                    {
                        MessageBox.Show("This is not an image file");
                    }
                }
                this.listview_ListSanPham.View = View.LargeIcon;
                this.imageList1.ImageSize = new Size(105, 105);
                this.listview_ListSanPham.LargeImageList = this.imageList1;

                // init image items
                for (int j = 0; j < this.imageList1.Images.Count; j++)
                {
                    ListViewItem item = new ListViewItem();
                    item.ImageIndex = j;
                    this.listview_ListSanPham.Items.Add(item);
                }

                // init item's data
                SQLQuery connect = new SQLQuery();
                connect.Connect();
                string queyStr = "SELECT * FROM SanPham";
                SqlCommand cmd = new SqlCommand(queyStr, SQLQuery.connection);
                SqlDataReader reader = cmd.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {
                        listSP.Add(new SanPham()
                        {
                            masanpham = reader["MaSP"].ToString(),
                            tensanpham = reader["Ten"].ToString(),
                            giaban = (long)reader["GiaBan"],
                            manhom = reader["MaNhom"].ToString(),
                            manhacungcap = reader["MaNCC"].ToString(),
                            anhdd = reader["HinhAnh"].ToString(),
                        });
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
                finally
                {
                    reader.Close();
                    SQLQuery.connection.Close();
                }
            }
            else MessageBox.Show("Không thể kết nối tới Database");
        }

        private void uc_ListSanPham_Load(object sender, EventArgs e)
        {
            init_Data();
        }

        private void listview_ListSanPham_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            try
            {
                if (listview_ListSanPham.SelectedItems.Count > 0)
                {
                    int selectedIndex = listview_ListSanPham.Items.IndexOf(listview_ListSanPham.SelectedItems[0]);
                    SanPham curItem = (SanPham)listSP[selectedIndex];
                    textbox_MaSanPham.Text = curItem.masanpham;
                    textbox_TenSanPham.Text = curItem.tensanpham;
                    textbox_NhaCungCap.Text = curItem.manhacungcap;
                    textbox_GiaBan.Text = curItem.giaban.ToString();
                    // Show current item's image
                    picturebox_HinhSanPham.Image = new Bitmap(@"D:\TTCSDL\TTCSDL\Img_ListSanPham\" + curItem.anhdd);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
