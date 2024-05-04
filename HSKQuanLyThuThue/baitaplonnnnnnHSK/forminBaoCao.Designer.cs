namespace baitaplonnnnnnHSK
{
    partial class forminBaoCao
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
            this.CrystalReport11 = new baitaplonnnnnnHSK.CrystalReport1();
            this.crBangthu2 = new baitaplonnnnnnHSK.crBangthu();
            this.crBangthu1 = new baitaplonnnnnnHSK.crBangthu();
            this.crystalview = new CrystalDecisions.Windows.Forms.CrystalReportViewer();
            this.ReportBangThuTienTien1 = new baitaplonnnnnnHSK.ReportBangThuTienTien();
            this.ReportBangThuTienTien2 = new baitaplonnnnnnHSK.ReportBangThuTienTien();
            this.SuspendLayout();
            // 
            // crystalview
            // 
            this.crystalview.ActiveViewIndex = 0;
            this.crystalview.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.crystalview.Cursor = System.Windows.Forms.Cursors.Default;
            this.crystalview.Dock = System.Windows.Forms.DockStyle.Fill;
            this.crystalview.Location = new System.Drawing.Point(0, 0);
            this.crystalview.Name = "crystalview";
            this.crystalview.ReportSource = this.ReportBangThuTienTien2;
            this.crystalview.Size = new System.Drawing.Size(1191, 627);
            this.crystalview.TabIndex = 0;
            this.crystalview.Load += new System.EventHandler(this.crystalReportViewer1_Load);
            // 
            // forminBaoCao
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1191, 627);
            this.Controls.Add(this.crystalview);
            this.Name = "forminBaoCao";
            this.Text = "forminBaoCao";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.ResumeLayout(false);

        }

        #endregion

        public CrystalDecisions.Windows.Forms.CrystalReportViewer crystalview;
        private crBangthu crBangthu1;
        private baitaplonnnnnnHSK.CrystalReport1 CrystalReport11;
        private crBangthu crBangthu2;
        private ReportBangThuTienTien ReportBangThuTienTien1;
        private ReportBangThuTienTien ReportBangThuTienTien2;
    }
}