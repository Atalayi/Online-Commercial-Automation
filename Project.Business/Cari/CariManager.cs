using Project.DataAccess.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project.Business.Cari
{
    public class CariManager
    {
        WebAutomationEntities db = new WebAutomationEntities();
        public void CariEkle(string ad, string soyad, string sehir, string mail)
        {
            Cariler cari = new Cariler();
            cari.CariAd = ad;
            cari.CariSoyad = soyad;
            cari.CariSehir = sehir;
            cari.CariMail = mail;
            cari.Durum = true;
            db.Cariler.Add(cari);
            db.SaveChanges();
        }
    }
}
