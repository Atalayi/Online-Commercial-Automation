using Project.Business.Kategori;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Web.Kategori
{
    public partial class KategoriEkle : System.Web.UI.Page
    {
        private KategoriManager kategoriManager;
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriManager = new KategoriManager();
        }

        protected void btnAddCat_Click(object sender, EventArgs e)
        {
            var katadi = txtKategoriAd.Text;
            kategoriManager.KategoriEkle(katadi);
            Response.Redirect("KategoriDefault.aspx");
        }
    }
}