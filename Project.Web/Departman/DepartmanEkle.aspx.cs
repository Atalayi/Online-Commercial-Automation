using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project.Business.Departman;

namespace Project.Web.Departman
{
    public partial class DepartmanEkle : System.Web.UI.Page
    {
        private DepartmanManager departmanManager;
        protected void Page_Load(object sender, EventArgs e)
        {
            departmanManager = new DepartmanManager();
        }

        protected void btnAddDep_Click(object sender, EventArgs e)
        {
            var depad = txtDepAd.Text;
            departmanManager.DepartmanEkle(depad);
            Response.Redirect("DepartmanDefault.aspx");
        }
    }
}