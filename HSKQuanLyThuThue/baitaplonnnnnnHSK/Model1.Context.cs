﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class QuanLyThueThuNhapCaNhanEntities : DbContext
    {
        public QuanLyThueThuNhapCaNhanEntities()
            : base("name=QuanLyThueThuNhapCaNhanEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<tblLichSuNopThue> tblLichSuNopThues { get; set; }
        public virtual DbSet<tblNguoiNopThue> tblNguoiNopThues { get; set; }
        public virtual DbSet<tblNguoiPhuThuoc> tblNguoiPhuThuocs { get; set; }
        public virtual DbSet<tblThueThuNhapCaNhan> tblThueThuNhapCaNhans { get; set; }
        public virtual DbSet<tblThuNhap> tblThuNhaps { get; set; }
        public virtual DbSet<vvNguoiTienNop> vvNguoiTienNops { get; set; }
    }
}
