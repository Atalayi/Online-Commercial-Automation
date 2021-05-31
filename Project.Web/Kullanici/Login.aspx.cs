using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project.Business;
using Project.DataAccess.Entity;

namespace Project.Web.Kullanici
{
    public partial class Login : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                if (Session["role"] == null)
                {

                }

                else if (Session["role"].Equals(1))
                {
                    Session.Abandon();
                    Session.Clear();
                    Response.Cookies.Clear();
                }
            }

            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('hata')", true);
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //var bs = new Business.UserManager();
            //bs.UserLogin(inputEmailAddress.Value, inputPassword.Value);
            //Response.Redirect("~/Kategori/KategoriDefault.aspx");

            if (inputEmailAddress.Value == "" || inputPassword.Value == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen tüm alanları doldurun')", true);
            }

            try
            {
                int role = Business.Sessions.getSessionRole(inputEmailAddress.Value, inputPassword.Value);

                if (role == 00404)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Kullanıcı adı ve/veya parola hatalı')", true);
                }

                else if (role == 1)
                {
                    List<Adminler> Credentials = Business.Sessions.getCredentials(inputEmailAddress.Value, inputPassword.Value);

                    Session["role"] = role;
                    Session["ad"] = Credentials[0].Ad; 
                    Session["soyad"] = Credentials[0].Soyad;
                    Session["email"] = Credentials[0].Email;  
                    Session["id"] = Credentials[0].AdminID;
                    Response.Redirect("~/Kategori/KategoriDefault.aspx");
                }
                //else if (role == 2)
                //{
                //    List<Kullanicilar> Credentials = Business.Giris.getCredentials(txtemail.Text, txtsifre.Text);

                //    Session["role"] = role;
                //    Session["email"] = Credentials[0].KullaniciAdi;
                //    Session["type"] = Credentials[0].KullaniciTip;
                //    Session["pozid"] = Credentials[0].SessionRoleId;
                //    Session["id"] = Credentials[0].Id;

                //    Session["pozisyon"] = Business.Giris.getPozisyonAd(role);
                //    //Response.AddHeader("REFRESH", "10;URL=default.aspx");
                //    Response.Redirect("~/User/Default.aspx");
                //}
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('exception')", true);
            }

        }
    }
}