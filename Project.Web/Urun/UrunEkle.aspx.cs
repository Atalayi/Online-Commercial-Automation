using Project.Business.Urun;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Web.Urun
{
    public partial class UrunEkle : System.Web.UI.Page
    {
        private UrunManager urunManager;
        protected void Page_Load(object sender, EventArgs e)
        {
            urunManager = new UrunManager();
        }

        protected void btnAddUrn_Click(object sender, EventArgs e)
        {
            var urunad = txtUrnAd.Text;
            var marka = txtUrnMarka.Text;
            var stok = Convert.ToInt16(txtUrnStok.Text);
            var alisfiyat = Convert.ToDecimal(txtUrnAF.Text);
            var satisfiyat = Convert.ToDecimal(txtUrnSF.Text);
            var kategori = Convert.ToInt32(txtKategori.Text);
            urunManager.UrunEkle(urunad, marka, stok, alisfiyat,satisfiyat,kategori);
            Response.Redirect("UrunDefault.aspx");
        }
    }
}