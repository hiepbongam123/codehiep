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
    
    public partial class tblLichSuNopThue
    {
        public int MaLSThue { get; set; }
        public Nullable<int> MaNguoiNopThue { get; set; }
        public Nullable<int> NamNopThue { get; set; }
        public Nullable<System.DateTime> NgayNopThue { get; set; }
        public string TrangThaiNop { get; set; }
    
        public virtual tblNguoiNopThue tblNguoiNopThue { get; set; }
    }
}
