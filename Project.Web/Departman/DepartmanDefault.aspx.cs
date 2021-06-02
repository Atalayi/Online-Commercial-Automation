using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Web.Departman
{
    public partial class DepartmanDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void myGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                int id = Convert.ToInt32(e.CommandArgument);

                // delete from tblcountry where countryid="+id+";

            }
        }

        protected void btnNewDep_Click(object sender, EventArgs e)
        {
            Response.Redirect("DepartmanEkle.aspx");
        }
    }
}