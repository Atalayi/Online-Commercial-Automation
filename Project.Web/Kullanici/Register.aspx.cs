using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project.DataAccess.Entity;
using Project.Business;

namespace Project.Web.Kullanici
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

            var bsn = new Business.UserManager();
            bsn.UserRegister(inputFirstName.Value, inputLastName.Value, inputEmailAddress.Value, inputPassword.Value);

            if (Page.IsValid)
            {
                Response.Redirect("~/Kullanici/Login.aspx");
            }
            
        }
    }
}