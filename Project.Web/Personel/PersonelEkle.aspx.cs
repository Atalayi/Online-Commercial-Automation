using Project.Business.Personel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Web.Personel
{
    public partial class PersonelEkle : System.Web.UI.Page
    {
        private PersonelManager personelManager;
        protected void Page_Load(object sender, EventArgs e)
        {
            personelManager = new PersonelManager();
        }

        protected void btnAddPer_Click(object sender, EventArgs e)
        {
            var perad = txtPerAd.Text;
            var persoyad = txtPerSoyad.Text;
            var dep = Convert.ToInt32(txtDep.Text);
            personelManager.PersonelEkle(perad,persoyad,dep);
            Response.Redirect("PersonelDefault.aspx");
        }
    }
}