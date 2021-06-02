using Project.DataAccess.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project.Business.Personel
{
    public class PersonelManager
    {
        WebAutomationEntities db = new WebAutomationEntities();

        public void PersonelEkle(string ad,string soyad,int departman)
        {
            Personeller per = new Personeller();
            per.PersonelAd = ad;
            per.PersonelSoyad = soyad;
            per.DepartmanID = departman;
            db.Personeller.Add(per);
            db.SaveChanges();
        }
    }
}
