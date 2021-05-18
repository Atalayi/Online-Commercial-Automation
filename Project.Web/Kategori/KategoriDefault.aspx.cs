using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project.Business.Kategori;
using Project.DataAccess.Entity;

namespace Project.Web.Kategori
{
    public partial class KategoriDefault : System.Web.UI.Page
    {
        private KategoriManager kategoriManager;
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriManager = new KategoriManager();
            KategoriGetir();
        }
        private void KategoriGetir()
        {
            
            Repeater1.DataSource = kategoriManager.KategoriListesi(); 
            Repeater1.DataBind();
            
        }

        protected void btnNewCat_Click(object sender, EventArgs e)
        {
            Response.Redirect("KategoriEkle.aspx");
        }
    }
}