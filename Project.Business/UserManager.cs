using Project.DataAccess.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project.Business
{
    public class UserManager
    {
        public bool UserLogin(string email, string password)
        {
            WebAutomationEntities db = new WebAutomationEntities();

            using (db)
            {
                var sorgu = (from x in db.Adminler
                             where x.Email == email && x.Sifre == password
                             select x).FirstOrDefault();
                if (sorgu != null)
                {
                    return true;
                }
                else return false;
            }
        }

        public void UserRegister(string name, string surname, string email, string password)
        {
            WebAutomationEntities db = new WebAutomationEntities();

            Adminler a = new Adminler();
            try
            {
                a.Ad = name;
                a.Soyad = surname;
                a.Email = email;
                a.Sifre = password;
                a.Yetki = 1;
                db.Adminler.Add(a);
                db.SaveChanges();
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
