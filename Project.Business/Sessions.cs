using Project.DataAccess.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project.Business
{
    public class Sessions
    {
        public static int getSessionRole(string username, string password)
        {
            WebAutomationEntities db = new WebAutomationEntities();
            using (db)
            {
                try
                {
                    var query = (from role in db.Adminler
                                 where role.Email == username && role.Sifre == password
                                 select role.Yetki).FirstOrDefault();
                    return query ?? -1;
                }

                catch
                {
                    return 00404;
                }
            }
        }

        public static List<Adminler> getCredentials(string username, string password)
        {
            WebAutomationEntities db = new WebAutomationEntities();
            using (db)
            {
                var sorgu = from p in db.Adminler
                            where p.Email == username && p.Sifre == password
                            select p;

                List<Adminler> infos = sorgu.ToList();
                return infos;
            }
        }
    }
}
