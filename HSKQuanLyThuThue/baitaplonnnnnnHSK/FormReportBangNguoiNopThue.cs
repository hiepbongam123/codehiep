using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace baitaplonnnnnnHSK
{
    public partial class FormReportBangNguoiNopThue : Form
    {
        public FormReportBangNguoiNopThue()
        {
            InitializeComponent();
        }
        QuanLyThueThuNhapCaNhanEntities db = new QuanLyThueThuNhapCaNhanEntities();

        private void crystalReportViewer1_Load(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-E8HPGP2;Initial Catalog=QuanLyThueThuNhapCaNhan;Integrated Security=True";
            using (SqlConnection cnn = new SqlConnection(constr))
            {
                string sql = "Select * from tblNguoiNopThue";
                SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
                DataSet ds = new DataSet();
                DataTable dataTable = new DataTable();
                da.Fill(ds, "QuanLyThueThuNhapCaNhan");

                ReportBangNguoiNop crystalReport1 = new ReportBangNguoiNop();
                crystalReport1.SetDataSource(ds.Tables[0]);
                crytalView.ReportSource = crystalReport1;
                crytalView.Refresh();
            }
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            var tabl = db.tblNguoiNopThues;
            reportBangNNT rpNNt = new reportBangNNT();
            rpNNt.SetDataSource(tabl.ToList());
            crytalView.ReportSource = rpNNt;
        }
    }
}
