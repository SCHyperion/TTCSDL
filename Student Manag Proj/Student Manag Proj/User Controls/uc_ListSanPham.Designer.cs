namespace Student_Manag_Proj.User_Controls
{
    partial class uc_ListSanPham
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.button_XoaSanPham = new System.Windows.Forms.Button();
            this.button_SuaThongTin = new System.Windows.Forms.Button();
            this.button_ThemSanPham = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.picturebox_HinhSanPham = new System.Windows.Forms.PictureBox();
            this.textbox_NhaCungCap = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.textbox_GiaBan = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.textbox_TenSanPham = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.textbox_MaSanPham = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.backgroundWorker2 = new System.ComponentModel.BackgroundWorker();
            this.backgroundWorker3 = new System.ComponentModel.BackgroundWorker();
            this.backgroundWorker4 = new System.ComponentModel.BackgroundWorker();
            this.listview_ListSanPham = new System.Windows.Forms.ListView();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picturebox_HinhSanPham)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // imageList1
            // 
            this.imageList1.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit;
            this.imageList1.ImageSize = new System.Drawing.Size(16, 16);
            this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
            // 
            // button_XoaSanPham
            // 
            this.button_XoaSanPham.Location = new System.Drawing.Point(747, 121);
            this.button_XoaSanPham.Name = "button_XoaSanPham";
            this.button_XoaSanPham.Size = new System.Drawing.Size(98, 23);
            this.button_XoaSanPham.TabIndex = 17;
            this.button_XoaSanPham.Text = "Xóa sản phẩm";
            this.button_XoaSanPham.UseVisualStyleBackColor = true;
            this.button_XoaSanPham.Click += new System.EventHandler(this.button_XoaSanPham_Click);
            // 
            // button_SuaThongTin
            // 
            this.button_SuaThongTin.Location = new System.Drawing.Point(747, 75);
            this.button_SuaThongTin.Name = "button_SuaThongTin";
            this.button_SuaThongTin.Size = new System.Drawing.Size(98, 23);
            this.button_SuaThongTin.TabIndex = 16;
            this.button_SuaThongTin.Text = "Sửa thông tin";
            this.button_SuaThongTin.UseVisualStyleBackColor = true;
            this.button_SuaThongTin.Click += new System.EventHandler(this.button_SuaThongTin_Click);
            // 
            // button_ThemSanPham
            // 
            this.button_ThemSanPham.Location = new System.Drawing.Point(747, 26);
            this.button_ThemSanPham.Name = "button_ThemSanPham";
            this.button_ThemSanPham.Size = new System.Drawing.Size(98, 23);
            this.button_ThemSanPham.TabIndex = 15;
            this.button_ThemSanPham.Text = "Thêm sản phẩm";
            this.button_ThemSanPham.UseVisualStyleBackColor = true;
            this.button_ThemSanPham.Click += new System.EventHandler(this.button_ThemSanPham_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.picturebox_HinhSanPham);
            this.groupBox2.Location = new System.Drawing.Point(614, 10);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(113, 134);
            this.groupBox2.TabIndex = 14;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Hình ảnh sản phẩm";
            // 
            // picturebox_HinhSanPham
            // 
            this.picturebox_HinhSanPham.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.picturebox_HinhSanPham.Location = new System.Drawing.Point(3, 16);
            this.picturebox_HinhSanPham.Name = "picturebox_HinhSanPham";
            this.picturebox_HinhSanPham.Size = new System.Drawing.Size(107, 118);
            this.picturebox_HinhSanPham.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.picturebox_HinhSanPham.TabIndex = 12;
            this.picturebox_HinhSanPham.TabStop = false;
            // 
            // textbox_NhaCungCap
            // 
            this.textbox_NhaCungCap.Enabled = false;
            this.textbox_NhaCungCap.Location = new System.Drawing.Point(100, 91);
            this.textbox_NhaCungCap.Name = "textbox_NhaCungCap";
            this.textbox_NhaCungCap.Size = new System.Drawing.Size(147, 20);
            this.textbox_NhaCungCap.TabIndex = 11;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(17, 94);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(80, 13);
            this.label6.TabIndex = 10;
            this.label6.Text = "Nhà Cung Cấp:";
            // 
            // textbox_GiaBan
            // 
            this.textbox_GiaBan.Enabled = false;
            this.textbox_GiaBan.Location = new System.Drawing.Point(376, 91);
            this.textbox_GiaBan.Name = "textbox_GiaBan";
            this.textbox_GiaBan.Size = new System.Drawing.Size(159, 20);
            this.textbox_GiaBan.TabIndex = 9;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(289, 94);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(48, 13);
            this.label5.TabIndex = 8;
            this.label5.Text = "Giá Bán:";
            // 
            // textbox_TenSanPham
            // 
            this.textbox_TenSanPham.Enabled = false;
            this.textbox_TenSanPham.Location = new System.Drawing.Point(376, 44);
            this.textbox_TenSanPham.Name = "textbox_TenSanPham";
            this.textbox_TenSanPham.Size = new System.Drawing.Size(159, 20);
            this.textbox_TenSanPham.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(289, 47);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(81, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Tên Sản Phẩm:";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.button_XoaSanPham);
            this.groupBox1.Controls.Add(this.button_SuaThongTin);
            this.groupBox1.Controls.Add(this.button_ThemSanPham);
            this.groupBox1.Controls.Add(this.groupBox2);
            this.groupBox1.Controls.Add(this.textbox_NhaCungCap);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.textbox_GiaBan);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.textbox_TenSanPham);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.textbox_MaSanPham);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox1.Location = new System.Drawing.Point(0, 0);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(851, 160);
            this.groupBox1.TabIndex = 4;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tin chi tiết";
            // 
            // textbox_MaSanPham
            // 
            this.textbox_MaSanPham.Enabled = false;
            this.textbox_MaSanPham.Location = new System.Drawing.Point(100, 44);
            this.textbox_MaSanPham.Name = "textbox_MaSanPham";
            this.textbox_MaSanPham.Size = new System.Drawing.Size(147, 20);
            this.textbox_MaSanPham.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(17, 47);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(77, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Mã Sản Phẩm:";
            // 
            // listview_ListSanPham
            // 
            this.listview_ListSanPham.Dock = System.Windows.Forms.DockStyle.Fill;
            this.listview_ListSanPham.HideSelection = false;
            this.listview_ListSanPham.Location = new System.Drawing.Point(0, 160);
            this.listview_ListSanPham.Name = "listview_ListSanPham";
            this.listview_ListSanPham.Size = new System.Drawing.Size(851, 309);
            this.listview_ListSanPham.TabIndex = 5;
            this.listview_ListSanPham.UseCompatibleStateImageBehavior = false;
            this.listview_ListSanPham.SelectedIndexChanged += new System.EventHandler(this.listview_ListSanPham_SelectedIndexChanged_1);
            // 
            // uc_ListSanPham
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.listview_ListSanPham);
            this.Controls.Add(this.groupBox1);
            this.Name = "uc_ListSanPham";
            this.Size = new System.Drawing.Size(851, 469);
            this.Load += new System.EventHandler(this.uc_ListSanPham_Load);
            this.groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.picturebox_HinhSanPham)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.ImageList imageList1;
        private System.Windows.Forms.Button button_XoaSanPham;
        private System.Windows.Forms.Button button_SuaThongTin;
        private System.Windows.Forms.Button button_ThemSanPham;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.PictureBox picturebox_HinhSanPham;
        private System.Windows.Forms.TextBox textbox_NhaCungCap;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox textbox_GiaBan;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox textbox_TenSanPham;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox textbox_MaSanPham;
        private System.Windows.Forms.Label label1;
        private System.ComponentModel.BackgroundWorker backgroundWorker2;
        private System.ComponentModel.BackgroundWorker backgroundWorker3;
        private System.ComponentModel.BackgroundWorker backgroundWorker4;
        private System.Windows.Forms.ListView listview_ListSanPham;
    }
}
