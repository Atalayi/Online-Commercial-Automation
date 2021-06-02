using Project.DataAccess.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project.Business.Urun
{
    public class UrunManager
    {
        WebAutomationEntities db = new WebAutomationEntities();
        public void UrunEkle(string urunad, string marka, short stok, decimal af,decimal sf,int kat)
        {
            Urunler urn = new Urunler();
            urn.UrunAd = urunad;
            urn.Marka = marka;
            urn.Stok = stok;
            urn.AlisFiyat = af;
            urn.SatisFiyat = sf;
            urn.KategoriId = kat;
            urn.Durum = true;
            db.Urunler.Add(urn);
            db.SaveChanges();
        }
    }
}
