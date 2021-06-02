using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project.Business.Cari;

namespace Project.Web.Cari
{
    public partial class CariEkle : System.Web.UI.Page
    {
        private CariManager cariManager;
        protected void Page_Load(object sender, EventArgs e)
        {
            cariManager = new CariManager();
        }

        protected void btnAddCari_Click(object sender, EventArgs e)
        {
            var cariad = txtCariAd.Text;
            var carisoyad = txtCariSyd.Text;
            var carisehir = txtCariShr.Text;
            var carimail = txtCariShr.Text;
            cariManager.CariEkle(cariad,carisoyad,carisehir,carimail);
            Response.Redirect("CariDefault.aspx");
        }
    }
}