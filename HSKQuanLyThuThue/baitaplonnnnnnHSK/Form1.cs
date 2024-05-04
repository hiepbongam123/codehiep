using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace baitaplonnnnnnHSK
{
    public partial class Form1 : Form
    {
        QuanLyThueThuNhapCaNhanEntities db = new QuanLyThueThuNhapCaNhanEntities();
        public Form1()
        {
            InitializeComponent();
            loaddata();
            addbingding();
            loaddataNguoiNopThue();
            addbingdingNguoiNopThue();
        }
        #region BangThongTin
        void addbingding() //nhan textbox hien noi dung
        {
            txtMa.DataBindings.Add(new Binding("Text", dtgvNguoiTien.DataSource, "MaNguoiNopThue", true, DataSourceUpdateMode.Never));
            txtTen.DataBindings.Add(new Binding("Text", dtgvNguoiTien.DataSource, "HoTen", true, DataSourceUpdateMode.Never));
            txtNgaysinh.DataBindings.Add(new Binding("Text", dtgvNguoiTien.DataSource, "NgaySinh", true, DataSourceUpdateMode.Never));
            txtDiachi.DataBindings.Add(new Binding("Text", dtgvNguoiTien.DataSource, "DiaChi", true, DataSourceUpdateMode.Never));
            txtSDt.DataBindings.Add(new Binding("Text", dtgvNguoiTien.DataSource, "SDT", true, DataSourceUpdateMode.Never));
            txtTongTien.DataBindings.Add(new Binding("Text", dtgvNguoiTien.DataSource, "TongTienThue", true, DataSourceUpdateMode.Never));
        }
        void loaddata()
        {
            var result = from c in db.vvNguoiTienNops
                             //where c.MaNguoiNopThue == 1 && c.HoTen == 'hoang van toan' 
                         select c;
            dtgvNguoiTien.DataSource = result.ToList();


        }
        private void btninphieu_Click(object sender, EventArgs e)
        {
            forminBaoCao f = new forminBaoCao();
            f.ShowDialog();
            f.Close();


        }
        #endregion

        #region BangNguoiNop
        private void dtgvDanhSachNguoiNop_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
        void addbingdingNguoiNopThue() //nhan textbox hien noi dung
        {
            textBoxMa.DataBindings.Add(new Binding("Text", dtgvDanhSachNguoiNop.DataSource, "MaNguoiNopThue", true, DataSourceUpdateMode.Never));
            textBoxTen.DataBindings.Add(new Binding("Text", dtgvDanhSachNguoiNop.DataSource, "HoTen", true, DataSourceUpdateMode.Never));
            textBoxNgaysinh.DataBindings.Add(new Binding("Text", dtgvDanhSachNguoiNop.DataSource, "NgaySinh", true, DataSourceUpdateMode.Never));
            textBoxDiachi.DataBindings.Add(new Binding("Text", dtgvDanhSachNguoiNop.DataSource, "DiaChi", true, DataSourceUpdateMode.Never));
            textBoxSDT.DataBindings.Add(new Binding("Text", dtgvDanhSachNguoiNop.DataSource, "SDT", true, DataSourceUpdateMode.Never));

        }
        void loaddataNguoiNopThue()
        {
            var result = from c in db.tblNguoiNopThues
                             //where c.MaNguoiNopThue == 1 && c.HoTen == 'hoang van toan' 
                         select c;
            dtgvDanhSachNguoiNop.DataSource = result.ToList();


        }

        void themdata()
        {
            tblNguoiNopThue nn = new tblNguoiNopThue
            {
                MaNguoiNopThue = Convert.ToInt32(textBoxMa.Text),
                HoTen = textBoxTen.Text,
                NgaySinh = Convert.ToDateTime(textBoxNgaysinh.Text),
                DiaChi = textBoxDiachi.Text,
                SDT = textBoxSDT.Text
            };

            db.tblNguoiNopThues.Add(nn);
            db.SaveChanges();
            MessageBox.Show("them hoan tat");
            loaddataNguoiNopThue();
        }
        void xoadata()
        {
            int id = Convert.ToInt32(textBoxMa.Text);
            DateTime ngay = Convert.ToDateTime(textBoxNgaysinh.Text);
            tblNguoiNopThue nn = db.tblNguoiNopThues.Where(p => p.MaNguoiNopThue == id).SingleOrDefault();

            db.tblNguoiNopThues.Remove(nn);
            db.SaveChanges();
            MessageBox.Show("da xoa");
            loaddataNguoiNopThue();
        }
        void suadata()
        {
            int id = Convert.ToInt32(dtgvDanhSachNguoiNop.SelectedCells[0].OwningRow.Cells["MaNguoiNopThue"].Value.ToString());
            tblNguoiNopThue nn = db.tblNguoiNopThues.Find(id);
            nn.MaNguoiNopThue = Convert.ToInt32(textBoxMa.Text);
            nn.HoTen = textBoxTen.Text;
            nn.NgaySinh = Convert.ToDateTime(textBoxNgaysinh.Text);
            nn.DiaChi = textBoxDiachi.Text;
            nn.SDT = textBoxSDT.Text;


            db.SaveChanges();
            MessageBox.Show("da sua");
            loaddataNguoiNopThue();
        }

        private void btnload_Click_1(object sender, EventArgs e)
        {
            loaddataNguoiNopThue();
        }

        private void btnSua_Click_1(object sender, EventArgs e)
        {
            suadata();
        }

        private void btnThem_Click_1(object sender, EventArgs e)
        {
            themdata();
        }

        private void btnxoa_Click_1(object sender, EventArgs e)
        {
            xoadata();
        }

        private void btnInPhieuNguoiNop_Click(object sender, EventArgs e)
        {
            FormReportBangNguoiNopThue f = new FormReportBangNguoiNopThue();
            f.ShowDialog();
            f.Close();
        }


        #endregion

        private void TimKiem()
        {
            var result = from c in db.vvNguoiTienNops
                         where c.MaNguoiNopThue == 1
                         select c;
            dtgvNguoiTien.DataSource = result.ToList();
        }

        private void btnTim_Click(object sender, EventArgs e)
        {
            TimKiem();
        }
















        #region nham

        private void trangThongTinToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void banfNguoiToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void thuNhapCaNhanToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void thueThuNhapToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void nguoiPhuThuocToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void lichSuNopToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void timKiemToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void chinhSuaToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void menuChinh_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void inPhieuToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ;

        }

        private void txtTimkiem_TextChanged(object sender, EventArgs e)
        {

        }

        private void Ma_Click(object sender, EventArgs e)
        {

        }

        private void dtgvNguoiTien_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void txtSDt_TextChanged(object sender, EventArgs e)
        {

        }



        #endregion


    }
}
