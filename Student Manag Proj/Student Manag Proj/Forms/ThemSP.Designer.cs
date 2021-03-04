namespace Student_Manag_Proj.Forms
{
    partial class ThemSP
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.textbox_MaSP = new System.Windows.Forms.TextBox();
            this.textbox_TenSP = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.textbox_MaNhom = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.textbox_MaNCC = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.textbox_GiaBan = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.picturebox_AnhDaiDien = new System.Windows.Forms.PictureBox();
            this.button_Cancel = new System.Windows.Forms.Button();
            this.button_Confirm = new System.Windows.Forms.Button();
            this.button_ThemAnh = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.picturebox_AnhDaiDien)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(32, 45);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(77, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Mã Sản Phẩm:";
            // 
            // textbox_MaSP
            // 
            this.textbox_MaSP.Location = new System.Drawing.Point(119, 42);
            this.textbox_MaSP.Name = "textbox_MaSP";
            this.textbox_MaSP.Size = new System.Drawing.Size(133, 20);
            this.textbox_MaSP.TabIndex = 1;
            // 
            // textbox_TenSP
            // 
            this.textbox_TenSP.Location = new System.Drawing.Point(119, 78);
            this.textbox_TenSP.Name = "textbox_TenSP";
            this.textbox_TenSP.Size = new System.Drawing.Size(133, 20);
            this.textbox_TenSP.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(32, 81);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(81, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Tên Sản Phẩm:";
            // 
            // textbox_MaNhom
            // 
            this.textbox_MaNhom.Location = new System.Drawing.Point(119, 115);
            this.textbox_MaNhom.Name = "textbox_MaNhom";
            this.textbox_MaNhom.Size = new System.Drawing.Size(133, 20);
            this.textbox_MaNhom.TabIndex = 5;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(32, 118);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(56, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Mã Nhóm:";
            // 
            // textbox_MaNCC
            // 
            this.textbox_MaNCC.Location = new System.Drawing.Point(119, 154);
            this.textbox_MaNCC.Name = "textbox_MaNCC";
            this.textbox_MaNCC.Size = new System.Drawing.Size(133, 20);
            this.textbox_MaNCC.TabIndex = 7;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(32, 157);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(50, 13);
            this.label4.TabIndex = 6;
            this.label4.Text = "Mã NCC:";
            // 
            // textbox_GiaBan
            // 
            this.textbox_GiaBan.Location = new System.Drawing.Point(119, 191);
            this.textbox_GiaBan.Name = "textbox_GiaBan";
            this.textbox_GiaBan.Size = new System.Drawing.Size(133, 20);
            this.textbox_GiaBan.TabIndex = 9;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(32, 194);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(48, 13);
            this.label5.TabIndex = 8;
            this.label5.Text = "Giá Bán:";
            // 
            // picturebox_AnhDaiDien
            // 
            this.picturebox_AnhDaiDien.BackColor = System.Drawing.SystemColors.ActiveBorder;
            this.picturebox_AnhDaiDien.Location = new System.Drawing.Point(301, 42);
            this.picturebox_AnhDaiDien.Name = "picturebox_AnhDaiDien";
            this.picturebox_AnhDaiDien.Size = new System.Drawing.Size(107, 138);
            this.picturebox_AnhDaiDien.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.picturebox_AnhDaiDien.TabIndex = 10;
            this.picturebox_AnhDaiDien.TabStop = false;
            // 
            // button_Cancel
            // 
            this.button_Cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button_Cancel.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button_Cancel.Location = new System.Drawing.Point(98, 238);
            this.button_Cancel.Name = "button_Cancel";
            this.button_Cancel.Size = new System.Drawing.Size(91, 42);
            this.button_Cancel.TabIndex = 11;
            this.button_Cancel.Text = "Hủy bỏ";
            this.button_Cancel.UseVisualStyleBackColor = true;
            this.button_Cancel.Click += new System.EventHandler(this.button_Cancel_Click);
            // 
            // button_Confirm
            // 
            this.button_Confirm.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button_Confirm.Location = new System.Drawing.Point(271, 239);
            this.button_Confirm.Name = "button_Confirm";
            this.button_Confirm.Size = new System.Drawing.Size(91, 41);
            this.button_Confirm.TabIndex = 12;
            this.button_Confirm.Text = "Xác nhận";
            this.button_Confirm.UseVisualStyleBackColor = true;
            this.button_Confirm.Click += new System.EventHandler(this.button_Confirm_Click);
            // 
            // button_ThemAnh
            // 
            this.button_ThemAnh.Location = new System.Drawing.Point(321, 186);
            this.button_ThemAnh.Name = "button_ThemAnh";
            this.button_ThemAnh.Size = new System.Drawing.Size(69, 28);
            this.button_ThemAnh.TabIndex = 13;
            this.button_ThemAnh.Text = "Thêm ảnh";
            this.button_ThemAnh.UseVisualStyleBackColor = true;
            // 
            // ThemSP
            // 
            this.AcceptButton = this.button_Confirm;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.button_Cancel;
            this.ClientSize = new System.Drawing.Size(455, 313);
            this.Controls.Add(this.button_ThemAnh);
            this.Controls.Add(this.button_Confirm);
            this.Controls.Add(this.button_Cancel);
            this.Controls.Add(this.picturebox_AnhDaiDien);
            this.Controls.Add(this.textbox_GiaBan);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.textbox_MaNCC);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.textbox_MaNhom);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.textbox_TenSP);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.textbox_MaSP);
            this.Controls.Add(this.label1);
            this.Name = "ThemSP";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Thêm Sản Phẩm";
            ((System.ComponentModel.ISupportInitialize)(this.picturebox_AnhDaiDien)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textbox_MaSP;
        private System.Windows.Forms.TextBox textbox_TenSP;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textbox_MaNhom;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textbox_MaNCC;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox textbox_GiaBan;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.PictureBox picturebox_AnhDaiDien;
        private System.Windows.Forms.Button button_Cancel;
        private System.Windows.Forms.Button button_Confirm;
        private System.Windows.Forms.Button button_ThemAnh;
    }
}