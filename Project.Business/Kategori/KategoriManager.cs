using Project.DataAccess.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project.Business.Kategori
{
    public class KategoriManager
    {
        WebAutomationEntities db = new WebAutomationEntities();
        public void KategoriEkle(string kategoriAdi)
        {
            Kategoriler kat = new Kategoriler();
            kat.KategoriAd = kategoriAdi;
            db.Kategoriler.Add(kat);
            db.SaveChanges();
        }
        //public void KategoriEkle(Kategoriler p)
        //{
        //    db.Kategoriler.Add(p);
        //    db.SaveChanges();
        //}
        //public List<Kategoriler> KategoriListesi()
        //{
        //        return db.Kategoriler.ToList();
        //}
    }
}
