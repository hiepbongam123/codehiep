//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace baitaplonnnnnnHSK
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblThueThuNhapCaNhan
    {
        public int MaSoThue { get; set; }
        public Nullable<int> MaNguoiNopThue { get; set; }
        public Nullable<int> NamTinhThue { get; set; }
        public Nullable<decimal> TongTienThuNhapNam { get; set; }
        public Nullable<decimal> TongSoTienKhauTru { get; set; }
        public Nullable<decimal> TongTienThue { get; set; }
    
        public virtual tblNguoiNopThue tblNguoiNopThue { get; set; }
    }
}
