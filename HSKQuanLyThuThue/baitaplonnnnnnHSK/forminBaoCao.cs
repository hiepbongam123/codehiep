using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace baitaplonnnnnnHSK
{
    public partial class forminBaoCao : Form
    {
        public forminBaoCao()
        {
            InitializeComponent();
        }

        private void crystalReportViewer1_Load(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-E8HPGP2;Initial Catalog=QuanLyThueThuNhapCaNhan;Integrated Security=True";
            using (SqlConnection cnn = new SqlConnection(constr))
            {
                string sql = "Select * from vvNguoiTienNop";
                SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
                DataSet ds = new DataSet();
                DataTable dataTable = new DataTable();
                da.Fill(ds, "QuanLyThueThuNhapCaNhan");

                ReportBangThuTienTien crystalReport1 = new ReportBangThuTienTien();

                crystalReport1.SetDataSource(ds.Tables[0]);
                crystalReport1.RecordSelectionFormula = "{vvNguoiTienNop.MaNguoiNopThue} = 1";
                crystalview.ReportSource = crystalReport1;

                crystalview.Refresh();
            }
        }
    }
}
