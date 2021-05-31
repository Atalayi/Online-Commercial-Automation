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
        protected void Page_PreInit(object sender, EventArgs e)
        {
            this.MasterPageFile = "~/MainMasterPage.Master";

            if (Session["role"] == null)
            {
                this.MasterPageFile = "~/Unauthorized.Master";
            }

            else if (Session["role"].Equals(1))
            {
                this.MasterPageFile = "~/MainMasterPage.Master";
            }
            else
            {
                this.MasterPageFile = "~/Unauthorized.Master";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }   

        protected void btnNewCat_Click(object sender, EventArgs e)
        {
            Response.Redirect("KategoriEkle.aspx");
        }

        protected void myGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                int id = Convert.ToInt32(e.CommandArgument);

                // delete from tblcountry where countryid="+id+";

            }
        }
    }
}