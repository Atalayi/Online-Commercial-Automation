using Project.DataAccess.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Web.Urun
{
    public partial class UrunDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //private void UrunContact()
        //{
        //    List<Contact> allContacts = null;
        //    using (WebAutomationEntities dc = new WebAutomationEntities())
        //    {
        //        var contacts = (from a in dc.Contacts
        //                        join b in dc.Countries on a.CountryID equals b.CountryID
        //                        join c in dc.States on a.StateID equals c.StateID
        //                        select new
        //                        {
        //                            a,
        //                            b.CountryName,
        //                            c.StateName
        //                        });
        //        if (contacts != null)
        //        {
        //            allContacts = new List<Contact>();
        //            foreach (var i in contacts)
        //            {
        //                Contact c = i.a;
        //                c.CountryName = i.CountryName;
        //                c.StateName = i.StateName;
        //                allContacts.Add(c);
        //            }
        //        }

        //        if (allContacts == null || allContacts.Count == 0)
        //        {
        //            //trick to show footer when there is no data in the gridview
        //            allContacts.Add(new Contact());
        //            myGridview.DataSource = allContacts;
        //            myGridview.DataBind();
        //            myGridview.Rows[0].Visible = false;
        //        }
        //        else
        //        {
        //            myGridview.DataSource = allContacts;
        //            myGridview.DataBind();
        //        }

        //        //Populate & bind country
        //        if (myGridview.Rows.Count > 0)
        //        {
        //            DropDownList dd = (DropDownList)myGridview.FooterRow.FindControl("ddCountry");
        //            BindCountry(dd, PopulateCountry());
        //        }

        //    }
        //}


        private List<Urunler> Urunler()
        {
            using (WebAutomationEntities dc = new WebAutomationEntities())
            {
                return dc.Urunler.OrderBy(a => a.UrunAd).ToList();
            }
        }

        private List<Urunler> KategoriList(int kategoriID)
        {
            using (WebAutomationEntities dc = new WebAutomationEntities())
            {
                return dc.Urunler.Where(a => a.KategoriId.Equals(kategoriID)).OrderBy(a => a.UrunAd).ToList();
            }
        }

        private void BindKategori(DropDownList ddKategori, List<Kategoriler> kategori)
        {
            ddKategori.Items.Clear();
            ddKategori.Items.Add(new ListItem { Text = "Kategori Sec", Value = "0" });
            ddKategori.AppendDataBoundItems = true;

            ddKategori.DataTextField = "KategoriID";
            ddKategori.DataValueField = "KategoriAd";
            ddKategori.DataSource = kategori;
            ddKategori.DataBind();
        }

        protected void ddKategori_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void myGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}