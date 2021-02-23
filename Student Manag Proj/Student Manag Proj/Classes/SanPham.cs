using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Student_Manag_Proj.Classes
{
    class SanPham
    {
        public string masanpham { get; set; }
        public string tensanpham { get; set; }
        public long giaban { get; set; }
        public string manhom { get; set; }
        public string manhacungcap { get; set; }
        public string anhdd { get; set; }
        public SanPham() { }

        public SanPham(string masp, string tensp, long giaban, string manhom, string mancc, string hinhanh)
        {
            this.masanpham = masp;
            this.manhom = manhom;
            this.manhacungcap = mancc;
            this.tensanpham = tensp;
            this.giaban = giaban;
            this.anhdd = hinhanh;
        }
    }
}
