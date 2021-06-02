using Project.DataAccess.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project.Business.Departman
{
    public class DepartmanManager
    {
        WebAutomationEntities db = new WebAutomationEntities();
        public void DepartmanEkle(string ad)
        {
            Departmanlar dep = new Departmanlar();
            dep.DepartmanAd = ad;
            dep.Durum = true;
            db.Departmanlar.Add(dep);
            db.SaveChanges();
        }
    }
}
