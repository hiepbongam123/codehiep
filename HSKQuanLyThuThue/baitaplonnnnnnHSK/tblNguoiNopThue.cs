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
    
    public partial class tblNguoiNopThue
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblNguoiNopThue()
        {
            this.tblLichSuNopThues = new HashSet<tblLichSuNopThue>();
            this.tblNguoiPhuThuocs = new HashSet<tblNguoiPhuThuoc>();
            this.tblThuNhaps = new HashSet<tblThuNhap>();
            this.tblThueThuNhapCaNhans = new HashSet<tblThueThuNhapCaNhan>();
        }
    
        public int MaNguoiNopThue { get; set; }
        public string HoTen { get; set; }
        public Nullable<System.DateTime> NgaySinh { get; set; }
        public string DiaChi { get; set; }
        public string SDT { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblLichSuNopThue> tblLichSuNopThues { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblNguoiPhuThuoc> tblNguoiPhuThuocs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblThuNhap> tblThuNhaps { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblThueThuNhapCaNhan> tblThueThuNhapCaNhans { get; set; }
    }
}